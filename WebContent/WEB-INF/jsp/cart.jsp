<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="com.wtu.product.Constant" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="com.wtu.product.util.SystemPropertiesUtil" %>
<%@ page import="com.wtu.product.util.PathUtil"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>我的购物车</title>
<link href="<%=SystemPropertiesUtil.getPropetiesValueByKey(Constant.STATIC_URL)%>/static/css/lib/bootstrap.min.css" rel="stylesheet">
<link href="<%=SystemPropertiesUtil.getPropetiesValueByKey(Constant.STATIC_URL)%>/static/css/style.css" rel="stylesheet">
<link href="<%=SystemPropertiesUtil.getPropetiesValueByKey(Constant.STATIC_URL)%>/static/css/basic.css" rel="stylesheet">
<link href="<%=SystemPropertiesUtil.getPropetiesValueByKey(Constant.STATIC_URL)%>/static/css/bootstrap.css" rel="stylesheet">
<link href="<%=SystemPropertiesUtil.getPropetiesValueByKey(Constant.STATIC_URL)%>/static/css/home.css" rel="stylesheet">
<link href="<%=SystemPropertiesUtil.getPropetiesValueByKey(Constant.STATIC_URL)%>/static/css/cart.css" rel="stylesheet">

    <script src="http://cdn.static.runoob.com/libs/jquery/2.1.1/jquery.min.js"></script>
    <script src="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body>
<!--header start here-->
<jsp:include page="header.jsp"></jsp:include>
<!--header end here-->

    <div class="cart container">
        <div class="title">
            <strong>全部商品</strong>
                <span id="top_total_count1">2</span>
        </div>
    <div id="cart_div">
    
        <div class="list-title">
            <ul>
                <li class="w-1"><input id="all" name="allCheck" class="sel-all" checked="checked" type="checkbox"></li>
                <li class="w-2"><label for="all">全选</label></li>
                <li class="w-3">商品</li>
                <li class="w-4">单价（元）/单位</li>
                <li class="w-5">数量</li>
                <li class="w-6">小计（元）</li>
                <li class="w-7">操作</li>
            </ul>
        </div>
        
        <div class="oneshop">
        <div class="shop-info" id="917979_shopinfo">
            <ul>
                <li class="w-1">
                    
                        <input class="sel-shop-all" name="checkShop" id="917979_shop" checked="checked" type="checkbox">
                    
                </li>
                <li class="w-2">
                    
                    
                    <span>
                    <a href="http://shop1486100.cnhnb.com/" target="_blank">曲成东</a>
                    </span>
                    <a href="javascript:void(0)" id="chat" data-type="cart" data-key="917979" class="im-btn online">和我联系</a>
                </li>
            </ul>
        </div>
        
            
            
            <div class="goods_info  clearfix" id="rows_2510386_">
            
                <ul class="clearfix">
                    
                    
                        <li class="w-1">
                            <input name="917979_checkProduct" id="2510386__product" productshopid="917979" value="2510386_" class="cart_product" checked="" type="checkbox">
                                   
                            <input value="1" id="minBuyCount_2510386_" type="hidden">
                            <input value="" id="2510386_sourceFrom" type="hidden">
                            <input value="45.0" id="price_2510386_" type="hidden">
                            
                              
                                 <input startnumber="1.0" endnumber="" value="45.0" name="product_price_2510386_" type="hidden">
                              
                            
                    
                    </li>
                    <li class="w-2">
                        
                            <a href="http://www.cnhnb.com/gongying/2510386/" target="_blank">
                                <img src="http://img.cnhnb.com/group1/M00/6F/BB/4A2F87J0B5ChRkRljx2OSAGKcbAAEsTm0krR8568!600x600.jpg" title="美早樱桃 30mm以上" width="80" height="80">
                            </a>
                        
                        
                    </li>
                    <li class="w-3">
                        <a href="http://www.cnhnb.com/gongying/2510386/" target="_blank">
                        
                        
                            美早樱桃 30mm以上
                        
                        </a>
                        <p>果径：30mm以上 果肉颜色：紫黑色 单颗重：12-15g</p>
                    </li>
                    <li class="w-4">
                        
                           
                                  45.00元/斤
                           
                           
                        
                        
                        
                        &nbsp;
                    </li>
                    <li class="w-5"><button class="left" onclick="javascript:cart.process.minusQty('2510386_');">-</button>
                        <input value="1" class="auto_input" name="2510386__qty" id="2510386__qty" style="width: 18px;" type="text">
                        <button class="right" onclick="javascript:cart.process.addQty('2510386_');">+</button>
                        <br><br><p id="c_min_2510386_" class="red hidden">最小起订为1</p>
                        <p id="c_max_2510386_" class="red hidden">
                            
                            
                                当前库存为
                            
                        </p>
                        <p id="msg_2510386_" class="red hidden"></p>
                    </li>
                    <li class="w-6"><em>
                        <span id="amount_2510386_">45.00</span>
                        &nbsp;
                    </em></li>
                    <li class="w-7"><a href="javascript:cart.process.deleteCartPdt('2510386_');" class="del">删 除</a><a href="javascript:cart.process.addToCollection('2510386_');" class="fav">加入收藏</a></li>
                </ul>
            </div>
        
        </div>
        
        <div class="oneshop">
        <div class="shop-info" id="788106_shopinfo">
            <ul>
                <li class="w-1">
                    
                        <input class="sel-shop-all" name="checkShop" id="788106_shop" checked="checked" type="checkbox">
                    
                </li>
                <li class="w-2">
                    
                         <img src="http://static.cnhnb.com//img/logo/npt-personal.png" width="16" height="16">
                    
                    
                    <span>
                    <a href="http://shop1502375.cnhnb.com/" target="_blank">洪湖市雨熙家庭农场</a>
                    </span>
                    <a href="javascript:void(0)" id="chat" data-type="cart" data-key="788106" class="im-btn online">和我联系</a>
                </li>
            </ul>
        </div>
        
            
            
            <div class="goods_info  clearfix" id="rows_2388594_">
            
                <ul class="clearfix">
                    
                    
                        <li class="w-1">
                            <input name="788106_checkProduct" id="2388594__product" productshopid="788106" value="2388594_" class="cart_product" checked="" type="checkbox">
                                   
                            <input value="5000" id="minBuyCount_2388594_" type="hidden">
                            <input value="" id="2388594_sourceFrom" type="hidden">
                            <input value="1.05" id="price_2388594_" type="hidden">
                            
                              
                                 <input startnumber="5000.0" endnumber="" value="1.05" name="product_price_2388594_" type="hidden">
                              
                            
                    
                    </li>
                    <li class="w-2">
                        
                            <a href="http://www.cnhnb.com/gongying/2388594/" target="_blank">
                                <img src="http://img.cnhnb.com/group1/M00/51/36/485A56L033ChRkRlhc94iAftFFAAGUEoZFKPs94!600x600.JPEG" title="粉莲藕 15~20cm 5-7cm 莲藕 洪湖莲藕" width="80" height="80">
                            </a>
                        
                        
                    </li>
                    <li class="w-3">
                        <a href="http://www.cnhnb.com/gongying/2388594/" target="_blank">
                        
                            粉莲藕 15~20cm 5-7...
                        
                        
                        </a>
                        <p>节长：15~20cm 直径：5-7cm 货品等级：特级 货品类别：净藕</p>
                    </li>
                    <li class="w-4">
                        
                           
                                  1.05元/斤
                           
                           
                        
                        
                        
                        &nbsp;
                    </li>
                    <li class="w-5"><button class="left" onclick="javascript:cart.process.minusQty('2388594_');">-</button>
                        <input value="5000" class="auto_input" name="2388594__qty" id="2388594__qty" style="width: 42px;" type="text">
                        <button class="right" onclick="javascript:cart.process.addQty('2388594_');">+</button>
                        <br><br><p id="c_min_2388594_" class="red"></p>
                        <p id="c_max_2388594_" class="red hidden">
                            
                            
                                当前库存为
                            
                        </p>
                        <p id="msg_2388594_" class="red hidden"></p>
                    </li>
                    <li class="w-6"><em>
                        <span id="amount_2388594_">5250.00</span>
                        &nbsp;
                    </em></li>
                    <li class="w-7"><a href="javascript:cart.process.deleteCartPdt('2388594_');" class="del">删 除</a><a href="javascript:cart.process.addToCollection('2388594_');" class="fav">加入收藏</a></li>
                </ul>
            </div>
        
        </div>
        

        <div class="list-bottom" style="position: static;">
            <ul>
                <li class="w-1"><input class="sel-all" id="all_select" name="allCheck" checked="checked" type="checkbox"></li>
                <li class="w-2"><label for="all_select">全选</label> <a href="javascript:void(0);" id="deletePdt_btn">删除</a> 
                <a href="javascript:cart.process.addAllToCollection();">加入收藏</a></li>
                <li class="w-4">&nbsp;</li>
                <li class="w-5">共<em><span class="total-number" id="total_count">2</span></em>件商品
                </li>
                <li class="w-6">合计（不含运费)：<em><span class="total-price" id="totalAmount">5295.00</span>元</em></li>
                <li class="w-7"><a href="javascript:void(0);" id="submitOrder" style="background-color:#f47a11;border: 1px solid #f47a11;"> 结 算</a>
                    <input id="productId" name="productId" type="hidden">
                    <input id="sourceFrom" name="sourceFrom" type="hidden">
                </li>
            </ul>
        </div>
        
    
    
    </div>
    </div>
    

</body>
</html>