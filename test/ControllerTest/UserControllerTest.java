package ControllerTest;

import org.junit.After;
import org.junit.Assert;
import org.junit.Before;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.mock.web.MockHttpSession;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.AbstractTransactionalJUnit4SpringContextTests;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.view.RedirectView;

import com.wtu.product.Constant;
import com.wtu.product.common.AppContext;
import com.wtu.product.controller.UserController;
import com.wtu.product.util.PathUtil;
import com.wtu.product.util.SessionUtil;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = {Constant.TEST_APPLICATION_XML, Constant.TEST_OES_MVC})
public class UserControllerTest extends AbstractTransactionalJUnit4SpringContextTests {

    @Before
    public void setUp() throws Exception {
        AppContext.setContextPath(Constant.TEST_CONTEXT_PATH);
        AppContext appContext = AppContext.getContext();
        appContext.addObject(Constant.APP_CONTEXT_SESSION, new MockHttpSession());
    }

    @After
    public void tearDown() throws Exception {
        AppContext appContext = AppContext.getContext();
        appContext.clear();
    }

    @Test
    public void testLoginCheck() {
        UserController userController = (UserController)this.applicationContext.getBean(Constant.TEST_USER_CONTROLLER);
        Assert.assertNotNull(userController);
        ModelAndView modelAndView = userController.loginCheck(Constant.TEST_USER_NAME, Constant.TEST_USER_PASSSWORD, Constant.BLANK, Constant.BLANK);
        RedirectView redirectView = (RedirectView)modelAndView.getView();
        Assert.assertEquals(PathUtil.getFullPath(Constant.TEST_USER_URL_CONTENT), redirectView.getUrl());
        Assert.assertNotNull(SessionUtil.getSession(Constant.USER));
    }

    @Test
    public void testLoginCheckParameterException() {
        UserController userController = (UserController)this.applicationContext.getBean(Constant.TEST_USER_CONTROLLER);
        Assert.assertNotNull(userController);
        ModelAndView modelAndView = userController.loginCheck(Constant.BLANK, Constant.BLANK, Constant.BLANK, Constant.BLANK);
        Assert.assertEquals(Constant.LOGIN_JSP, modelAndView.getViewName());
        Assert.assertNull(SessionUtil.getSession(Constant.USER));
    }

    @Test
    public void testLoginCheckServiceException() {
        UserController userController = (UserController)this.applicationContext.getBean(Constant.TEST_USER_CONTROLLER);
        Assert.assertNotNull(userController);
        ModelAndView modelAndView = userController.loginCheck(Constant.TEST_USER_NAME, Constant.TEST_ERROR_PASSSWORD, Constant.BLANK, Constant.BLANK);
        Assert.assertEquals(Constant.LOGIN_JSP, modelAndView.getViewName());
        Assert.assertNull(SessionUtil.getSession(Constant.USER));
        ModelAndView modelAndView1 = userController.loginCheck(Constant.TEST_ERROE_USER_NAME, Constant.TEST_USER_PASSSWORD, Constant.BLANK, Constant.BLANK);
        Assert.assertEquals(Constant.LOGIN_JSP, modelAndView1.getViewName());
        Assert.assertNull(SessionUtil.getSession(Constant.USER));
    }
}
