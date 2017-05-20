<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="com.wtu.product.Constant" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="com.wtu.product.util.SystemPropertiesUtil" %>
<%@ page import="com.wtu.product.util.PathUtil"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>商品详情</title>
<link href="<%=SystemPropertiesUtil.getPropetiesValueByKey(Constant.STATIC_URL)%>/static/css/lib/bootstrap.min.css" rel="stylesheet">
<link href="<%=SystemPropertiesUtil.getPropetiesValueByKey(Constant.STATIC_URL)%>/static/css/style.css" rel="stylesheet">
<link href="<%=SystemPropertiesUtil.getPropetiesValueByKey(Constant.STATIC_URL)%>/static/css/basic.css" rel="stylesheet">
<link href="<%=SystemPropertiesUtil.getPropetiesValueByKey(Constant.STATIC_URL)%>/static/css/bootstrap.css" rel="stylesheet">
<link href="<%=SystemPropertiesUtil.getPropetiesValueByKey(Constant.STATIC_URL)%>/static/css/home.css" rel="stylesheet">
<link href="<%=SystemPropertiesUtil.getPropetiesValueByKey(Constant.STATIC_URL)%>/static/css/goodsdetail.css" rel="stylesheet">

    <script src="http://cdn.static.runoob.com/libs/jquery/2.1.1/jquery.min.js"></script>
    <script src="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <script src="<%=SystemPropertiesUtil.getPropetiesValueByKey(Constant.STATIC_URL)%>/static/js/jquery.jqzoom-core.pack.js"></script>
    <script type="text/javascript">
  $(document).ready(function(){
      var showproduct = {
          "boxid":"showbox",
          "sumid":"showsum",
          "boxw":400,//宽度,该版本中请把宽高填写成一样
          "boxh":400,//高度,该版本中请把宽高填写成一样
          "sumw":60,//列表每个宽度,该版本中请把宽高填写成一样
          "sumh":60,//列表每个高度,该版本中请把宽高填写成一样
          "sumi":7,//列表间隔
          "sums":5,//列表显示个数
          "sumsel":"sel",
          "sumborder":1,//列表边框，没有边框填写0，边框在css中修改
          "lastid":"showlast",
          "nextid":"shownext"
          };//参数定义    
     $.ljsGlasses.pcGlasses(showproduct);//方法调用，务必在加载完后执行
  });
</script>
</head>
<body>

<!--header start here-->
<jsp:include page="header.jsp"></jsp:include>
<!--header end here-->

<div class="container">
    <div class="main-left">
        <div class="pro-info clearfix">
            <div class="pro-info-pic">
                <div id="prdGallery" class="gallery">
                    <div class="main-pic"></div>
                </div>
            <div style="width:100%;overflow:hidden;position:relative;">
            <ul class="thumb clearfix" style="width: 354px;">
                <li class="" data-index="0">
                      <div class="pic">
                          <a class="" href="javascript:void(0);" rel="{gallery: 'gallery', smallimage: 'http://img.cnhnb.com/group1/M00/6F/BB/EEE47AO4A7ChRkRljx2OSAFkwOAAE9kEsGF1w777!400x400.jpg',largeimage: 'http://img.cnhnb.com/group1/M00/6F/BB/EEE47AO4A7ChRkRljx2OSAFkwOAAE9kEsGF1w777!600x600.jpg'}"></a>
                      </div>
                    </li><li class="" data-index="0">
                      <div class="pic">
                          <a class="" href="javascript:void(0);" rel="{gallery: 'gallery', smallimage: 'http://img.cnhnb.com/group1/M00/6F/BB/5D66092155ChRkRljx2OWAQJQLAADQ_TIJtdM040!400x400.jpg',largeimage: 'http://img.cnhnb.com/group1/M00/6F/BB/5D66092155ChRkRljx2OWAQJQLAADQ_TIJtdM040!600x600.jpg'}"></a>
                      </div>
                    </li>
            </ul>
            </div>
            <a class="thumb-prev" href="#" style="display: none;">❰</a>
            <a class="thumb-next" href="#" style="display: none;">❱</a>
        </div>
    
   <div class="pro-info-txt">
       <div class="tit clearfix">
            <strong>美早樱桃 30mm以上</strong>
       </div>
       <div class="txt clearfix mt10">
           <span class="fl"><label>更新时间：</label>
           2017-05-05 09:02:47</span>
           <span class="fr"><label>查看人数：</label>2293</span>
       </div>
       <div class="txt clearfix">
               <span><label>发货地：</label>山东省 烟台市 牟平区</span>
           </div>
       <div class="price clearfix">
           
           <p>
                <span class="mr5">价格：</span>
                
                <span class="red fs24 mr5">
                        45.00
                    </span>
                    <span class="mr15">元/斤</span>
                    <span class="mr5">1斤起批</span>
                </p>
          </div>
       <div class="txt clearfix">
             <span><label>又名 ：</label>车厘子 </span>
            </div>
       <div class="breed clearfix">
        <span class="align-1"><label>品种：</label>美早樱桃</span>
        <span class="align-1"><label>果径：</label>30mm以上</span><span class="align-1"><label>果肉颜色：</label>紫黑色</span><span class="align-1"><label>单颗重：</label>12-15g</span>
        </div>
       
       <div class="btn clearfix">
               <a href="javascript:void(0);" class="btn-im" id="buySupply">立即购买</a>
               <a href="javascript:void(0);" class="btn-add-card" id="addCart">加入购物车</a>
           </div>
    </div>
    </div>
<div class="detail-main">
    <div id="wrapTab" class="wrapper_main mb_10">
        <div class="tabs-tit clearfix">
            <span class="tabLabel current"><a href="javascript:void(0);" rel="#tabID-0">详细信息</a></span>
            <span class="tabLabel" id="queryComment"><a href="javascript:void(0);" rel="#tabID-1">　评价　</a></span>
        </div>
        <div class="inner">
            <div id="tabID-0" class="tabContent" style="display: block;">
                <div class="item-description" id="productDetail">
                    【美早大樱桃】
坚持清晨采摘，现摘现发，顺丰空运次日达送达您手中，才下枝头，就上舌头，美味又新鲜。无农药、无化肥，原生态生长！纯天然无添加，轻咬一口，脆甜可口，樱桃味道浓、汁水多，孕妇小孩首选。
量大走配货车或者空运都可以 ！      .运费50联系电话15684126987曲成东
                    
                    
                      <div class="pic">
                          <img src="http://img.cnhnb.com/group1/M00/6F/BB/4A2F87J0B5ChRkRljx2OSAGKcbAAEsTm0krR8568!600x600.jpg" alt="美早樱桃 30mm以上">
                      </div>
                </div>
            </div>
            <div id="tabID-1" class="tabContent" style="display: none;">
                <div id="shop_comments">
                </div>
            </div>
        </div>
    </div>
      
    </div>
    <div class="wrapper mt10">
    </div>
     <div class="tit slider-ctrl">
         <em class="ctrl"><a class="pre" href="#" rel="nofollow">&nbsp;</a><a class="next" href="#" rel="nofollow">&nbsp;</a></em>
         <span class="black">同类推荐</span>
     </div>
     <div class="slider-list">
         <div class="wrap" style="width: 6264px;"><ul class="recommd-list clearfix">
             
                <li>
                 <a href="http://www.cnhnb.com/gongying/2543575/" target="_blank">
                    
                    
                        <img src="http://img.cnhnb.com/group1/M00/77/71/4A8C5B2D43ChRkRlkNdb2AdAkmAAK-K5H2WPc91!400x400.JPEG">
                    
                     <b title="先锋樱桃 10-15mm">先锋樱桃 10-15mm</b>
                     
                     
                         <span>¥15.00元/斤</span>
                     
                 </a>
                 </li>
             </ul>
             </div>
     </div>

 
</div>
             <div class="wrapper mt10 clearfix">
 <div class="tit slider-ctrl">
      <em class="ctrl" style="display: none;"><a class="pre" href="#" rel="nofollow">&nbsp;</a>
      <a class="next" href="#" rel="nofollow">&nbsp;</a></em>
      <span class="black">最近浏览</span>
  </div>
  <div class="slider-list">
      <ul class="recommd-list clearfix">
          <li>
              <a href="http://www.cnhnb.com/gongying/2479755/" target="_blank" title="黄心猕猴桃 2两以上 黄心">
                  
                  <img src="http://img.cnhnb.com/group1/M00/68/24/ADE1C8TC91ChRkRljT2-eAd5CoAAMKtIRqbtw84!400x400.JPEG">
                  <b title="黄心猕猴桃 2两以上 黄心">黄心猕猴桃 2两以上 黄心</b>
                  
                  <span>¥2.50元/斤</span>
              </a>
          </li><li>
              <a href="http://www.cnhnb.com/gongying/2388594/" target="_blank" title="粉莲藕 15~20cm 5-7cm 莲藕 洪湖莲藕">
                  
                  <img src="http://img.cnhnb.com/group1/M00/51/36/485A56L033ChRkRlhc94iAftFFAAGUEoZFKPs94!400x400.JPEG">
                  <b title="粉莲藕 15~20cm 5-7cm 莲藕 洪湖莲藕">粉莲藕 15~20cm 5-7cm 莲藕 洪湖莲藕</b>
                  
                  <span>¥1.05元/斤</span>
              </a>
          </li>
      </ul>
  </div> </div>
             <div class="keyword-list mt30">
                    <p>相关分类：</p>
                    <ul class="clearfix">
                            <li><a href="http://search.cnhnb.com/product/maotao/" target="_blank" title="毛桃">毛桃</a>
                            </li>
                            <li><a href="http://search.cnhnb.com/product/shiliu/" target="_blank" title="石榴">石榴</a>
                            </li>
                            <li><a href="http://search.cnhnb.com/product/tiangua/" target="_blank" title="甜瓜">甜瓜</a>
                            </li>
                            <li><a href="http://search.cnhnb.com/product/hmd/" target="_blank" title="红毛丹">红毛丹</a>
                            </li>
                            <li><a href="http://search.cnhnb.com/product/bajiao/" target="_blank" title="芭蕉">芭蕉</a>
                            </li>
                            <li><a href="http://search.cnhnb.com/product/shumei/" target="_blank" title="树莓">树莓</a>
                            </li>
                            <li><a href="http://search.cnhnb.com/product/xiangj/" target="_blank" title="香蕉">香蕉</a>
                            </li>
                            <li><a href="http://search.cnhnb.com/product/hmg/" target="_blank" title="哈密瓜">哈密瓜</a>
                            </li>
                            <li><a href="http://search.cnhnb.com/product/shaguo/" target="_blank" title="沙果">沙果</a>
                            </li>
                            <li><a href="http://search.cnhnb.com/product/caomei/" target="_blank" title="草莓">草莓</a>
                            </li>
                            <li><a href="http://search.cnhnb.com/product/dhg/" target="_blank" title="蛋黄果">蛋黄果</a>
                            </li>
                            <li><a href="http://search.cnhnb.com/product/pipa/" target="_blank" title="枇杷">枇杷</a>
                            </li>
                            <li><a href="http://search.cnhnb.com/product/suanjiao/" target="_blank" title="酸角">酸角</a>
                            </li>
                            <li><a href="http://search.cnhnb.com/product/whg/" target="_blank" title="无花果">无花果</a>
                            </li>
                    </ul>
                </div>
                </div>
<!-- 商品详情 -->

</body>
</html>