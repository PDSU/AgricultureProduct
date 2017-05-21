package com.wtu.product.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.wtu.product.model.Goods;
import com.wtu.product.model.User;
import com.wtu.product.service.GoodsService;
import com.wtu.product.util.ImageUpLoad;
import com.wtu.product.util.StringUtil;

@Controller
@RequestMapping("/page/goods")
public class GoodsController extends BaseController {

    @Autowired
    private GoodsService goodsService;

    public void setGoodsService(GoodsService goodsService) {
        this.goodsService = goodsService;
    }

    @RequestMapping(value = "/create", method = RequestMethod.POST)
    public ModelAndView submitNews(@RequestParam(value = "goodsName", defaultValue = "") String goodsName,
                                   @RequestParam(value = "price", defaultValue = "") Double price,
                                   @RequestParam(value = "unit", defaultValue = "") String unit,
                                   @RequestParam(value = "type", defaultValue = "") String type,
                                   @RequestParam(value = "picture", required = false) MultipartFile file,
                                   @RequestParam(value = "description", defaultValue = "") String description) {
        String imagePath = ImageUpLoad.saveImage(file);
        User user = (User)this.getSession("USER");
        if (!StringUtil.isEmpty(imagePath)){
            Goods goods=new Goods();
            goods.setGoodsName(goodsName);
            goods.setPrice(price);
            goods.setUnit(unit);
            goods.setType(type);
            goods.setPicture(imagePath);
            goods.setUserId(user.getUserId());
            goods.setDescription(description);
            goodsService.saveGoods(goods);
            ModelAndView modelAndView = new ModelAndView();
            modelAndView.setView(this.getRedirectView("page/home/publish"));
            return modelAndView;
        } else {
            return null;
        }
    }

    @RequestMapping(value = "/products/{typeId}", method = RequestMethod.GET)
    public ModelAndView publishGoods(@PathVariable String typeId) {
	    ModelAndView modelAndView = new ModelAndView();
        modelAndView.setViewName("products");
        return modelAndView;
	}
}
