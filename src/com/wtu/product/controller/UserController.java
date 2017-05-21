package com.wtu.product.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.regex.Pattern;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.view.RedirectView;

import com.wtu.product.common.AppContext;
import com.wtu.product.exception.ParameterException;
import com.wtu.product.exception.ServiceException;
import com.wtu.product.model.Pagination;
import com.wtu.product.model.ShoppingType;
import com.wtu.product.model.User;
import com.wtu.product.service.UserService;
import com.wtu.product.util.MD5Util;
import com.wtu.product.util.RoleMapUtil;
import com.wtu.product.util.StringUtil;

@Controller
@RequestMapping("/page/user")
public class UserController extends BaseController {

    @Autowired
    private UserService userService;

    public void setUserService(UserService userService) {
        this.userService = userService;
    }

    //登陆验证
    @RequestMapping(value = "/login", method = RequestMethod.POST)
    public ModelAndView loginCheck(
                                   @RequestParam(value = "userName", defaultValue = "") String userName,
                                   @RequestParam(value = "password", defaultValue = "") String password,
                                   @RequestParam(value = "queryString", defaultValue = "") String queryString,
                                   @RequestParam(value = "go", defaultValue = "") String go
                                   ) {
        ModelAndView modelAndView = new ModelAndView();
        Map<String,String> message = new HashMap<String, String>();
        try {
            User user = null;
            System.out.println(userName+":"+password);
            user = userService.login(userName, password);
            System.out.println(user);
            user.setPassword("");
            this.addSession("USER", user);
            if (!StringUtil.isEmpty(queryString)) {
                if (queryString.startsWith("#")) {
                    queryString = queryString.substring(1);
                }
                go = go + "?" + queryString;
            }
            RedirectView redirectView = StringUtil.isEmpty(go) ? this.getRedirectView("page/user/content")
                                                               : new RedirectView(AppContext.getContextPath() + "/" + go);
            modelAndView.setView(redirectView);
        } catch (ParameterException parameterException) {
            message = parameterException.getErrorMessage();
            modelAndView.addObject("TIP_MESSAGE", message);
            modelAndView.setViewName("login");
        } catch (ServiceException serviceException) {
            int errorCode = serviceException.getCode();
            if (errorCode == 1000) {
                message.put("errorNameMessage", serviceException.getExceptionMessage());
            }
            if (errorCode == 1001) {
                message.put("errorPasswordMessage", serviceException.getExceptionMessage());
            }
            modelAndView.addObject("TIP_MESSAGE", message);
            modelAndView.setViewName("login");
        }
        this.removeSession("hiddens");
        return modelAndView;
    }

    //角色判断
    @RequestMapping(value = "/content", method = RequestMethod.GET)
    public ModelAndView checkRoleType() {
        ModelAndView modelAndView = new ModelAndView();
        String roleType = AppContext.getContext().getUser().getRole();
        modelAndView.setView(this.getRedirectView(RoleMapUtil.getPageUri(roleType)));
        return modelAndView;
    }

    //退出登陆
    @RequestMapping(value = "/logout", method = RequestMethod.GET)
    public ModelAndView logout() {
        ModelAndView modelAndView = new ModelAndView();
        this.removeSession("USER");
        modelAndView.setView(this.getRedirectView("page/home/init-data"));
        return modelAndView;
    }
    
   //跳向注册页面
    @RequestMapping(value = "/register", method = RequestMethod.GET)
    public ModelAndView register() {
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.setViewName("register");
        return modelAndView;
    }

    //注册
    @RequestMapping(value = "/register", method = RequestMethod.POST)
    public ModelAndView userRegister(
                                    @RequestParam(value = "phone", defaultValue = "") String phone,
                                    @RequestParam(value = "user_name", defaultValue = "") String userName,
                                    @RequestParam(value = "password", defaultValue = "") String password
                                    ) {
        ModelAndView modelAndView = new ModelAndView();
        User user = new User();
        user.setPhone(phone);
        user.setUserName(userName);
        user.setPassword(MD5Util.getEncryptPassword(password));
        user.setRole("1");
        userService.createUser(user);
        this.addSession("FlahMessage", "注册成功!");
        modelAndView.addObject("FlahMessage", "注册成功!");
        modelAndView.setView(this.getRedirectView("page/home/login"));
        return modelAndView;
    }
    
    //保存卖家信息
    @RequestMapping(value = "/save-shopper-information", method = RequestMethod.POST)
    public ModelAndView saveProfile(
                                    @RequestParam(value = "identifyId", defaultValue = "") String identifyId,
                                    @RequestParam(value = "businessAddress", defaultValue = "") String businessAddress,
                                    @RequestParam(value = "businessDescripe", defaultValue = "") String businessDescripe,
                                    @RequestParam(value = "types", defaultValue = "") String[] types
                                    ) {
        ModelAndView modelAndView = new ModelAndView();
        User user = new User();
        user.setRole("2");
        user.setIdentifyId(Integer.parseInt(identifyId));
        user.setBusinessAddress(businessAddress);
        user.setBusinessDescripe(businessDescripe);
        user.setUserId(AppContext.getContext().getUser().getUserId());
        userService.updateBusiness(user);
        for(int i=0;i<types.length;i++){
        	userService.addBusinessGoodsType(AppContext.getContext().getUser().getUserId(), Integer.parseInt(types[i]));
        }
        userService.getUserById(AppContext.getContext().getUser().getUserId());
        this.addSession("USER", user);
        modelAndView.setView(this.getRedirectView("page/home/init-data"));
        return modelAndView;
    }

    //获取所有用户
    @RequestMapping(value = "/all-users", method = RequestMethod.GET)
    public ModelAndView allUser() {
    	String currentPageStr="";
    	if (StringUtil.isEmpty(currentPageStr)) {
            currentPageStr = "1";
        }
        Integer currentPage = Integer.parseInt(currentPageStr);
        if (currentPage < 1) {
            currentPage = 1;
        }
        Pagination pagination = new Pagination();
        pagination.setCurrentPage(currentPage);
    	List<User> allUser = userService.getAllUser(pagination);
    	this.addSession("allUser", allUser);
    	this.addSession("pagination", pagination);
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.setViewName("user_manage");
        return modelAndView;
    }
    
    //删除用户
    @RequestMapping(value = "/delete-user/{id}", method = RequestMethod.GET)
    public ModelAndView showProfile(@PathVariable String id) {
    	userService.deleteUser(Integer.parseInt(id));
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.setView(this.getRedirectView("page/user/all-users"));
        return modelAndView;
    }
    
    //跳向修改页面
    @RequestMapping(value = "/userinfo", method = RequestMethod.GET)
    public ModelAndView editProfile() {
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.setViewName("userinfo");
        return modelAndView;
    }

    
}
