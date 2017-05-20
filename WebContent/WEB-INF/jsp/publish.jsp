<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="com.wtu.product.Constant" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="com.wtu.product.util.SystemPropertiesUtil" %>
<%@ page import="com.wtu.product.util.PathUtil"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>商品发布</title>
<link href="<%=SystemPropertiesUtil.getPropetiesValueByKey(Constant.STATIC_URL)%>/static/css/lib/bootstrap.min.css" rel="stylesheet">
<link href="<%=SystemPropertiesUtil.getPropetiesValueByKey(Constant.STATIC_URL)%>/static/css/style.css" rel="stylesheet">
<link href="<%=SystemPropertiesUtil.getPropetiesValueByKey(Constant.STATIC_URL)%>/static/css/basic.css" rel="stylesheet">
<link href="<%=SystemPropertiesUtil.getPropetiesValueByKey(Constant.STATIC_URL)%>/static/css/bootstrap.css" rel="stylesheet">
<link href="<%=SystemPropertiesUtil.getPropetiesValueByKey(Constant.STATIC_URL)%>/static/css/home.css" rel="stylesheet">
<link href="<%=SystemPropertiesUtil.getPropetiesValueByKey(Constant.STATIC_URL)%>/static/css/publish.css" rel="stylesheet">
    <script src="http://cdn.static.runoob.com/libs/jquery/2.1.1/jquery.min.js"></script>
    <script src="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body>
    <!--header start here-->
    <jsp:include page="header.jsp"></jsp:include>
    <div style="height:60px;"></div>
   <!--header end here-->
   <div class="row">
                    <form class="form-horizontal" action="<%=PathUtil.getFullPath("goods/create")%>" method="post" enctype="multipart/form-data">
                        <div class="form-group">
                            <label class="col-md-2 control-label">商品名称:</label>
                            <div class="col-md-8">
                                <div class="input-group">                           
                                    <input id="goodsName" name="goodsName" type="text" class="form-control1" placeholder="商品名称">
                                </div>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-md-2 control-label">商品价格:</label>
                            <div class="col-md-8">
                                <div class="input-group">                           
                                    <input id="price" name="price" type="text" class="form-control1" placeholder="商品价格">
                                </div>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-md-2 control-label">价格单位:</label>
                            <div class="col-md-3">
                              <select class="selectpicker form-control1 ng-invalid ng-invalid-required" ng-model="model.select" id="rangeSelect" name="unit">
                                <option>选择价格单位</option>
                                   <option  value="g">g</option>
                                   <option  value="50g">50g</option>
                                   <option  value="500g">500g</option>
                                   <option  value="1000g">1000g</option>
                                   <option  value="两">两</option>
                                   <option  value="斤">斤</option>
                              </select>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-md-2 control-label">商品类型:</label>
                            <div class="col-md-3">
                              <select class="selectpicker form-control1 ng-invalid ng-invalid-required" ng-model="model.select" id="multiselect" name="type">
                                <option>选择商品类型</option>
                                    <option  value="水果">水果</option>
                                    <option  value="蔬菜">蔬菜</option>
                                    <option  value="牧畜水产">牧畜水产</option>
                                    <option  value="粮油米面">粮油米面</option>
                                    <option  value="农副加工">农副加工</option>
                              </select>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-md-2 control-label">商品图片:</label>
                            <div class="col-md-3">
                                <img src="/static_img/${Video.image }" alt="" style="width: 200px;height: 150px;">
                                <button class="btn" type="button" onclick="exampleInputFile.click()">上传</button>
                                <input name="picture" type="file" id="exampleInputFile" style="visibility: hidden; position: absolute;">
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-md-2 control-label">商品描述:</label>
                            <div class="col-md-8">
                                <textarea name="description" class="form-control" rows="12"></textarea>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-sm-8 col-sm-offset-2">
                                <button class="btn-success btn" type="submit" id="publishBtn">发布</button>
                                <button class="btn-default btn" id="cancelBtn">取消</button>
                            </div>
                        </div>
                    </form>
                    </div>
   
<!-- modal -->
<!-- 模态框（Modal） -->
                <div class="modal fade" id="denglu" tabindex="-1" role="dialog" 
                   aria-labelledby="myModalLabel" aria-hidden="true">
                   <div class="modal-dialog">
                      <div class="modal-content text-center">
                         <div class="modal-header text-center">
                            <button type="button" class="close" 
                               data-dismiss="modal" aria-hidden="true">
                                  &times;
                            </button>
                            <h1 class="modal-title" id="myModalLabel">
                               农园账号登录
                            </h1>
                         </div>
                         <div class="modal-body text-center" style="text-align:center;">
                          <form action="<%=PathUtil.getFullPath(Constant.LOGIN_URL_PAGE)%>" method="POST">
                           <input class="item_account" autocomplete="off" type="text" name="userName" id="userName" placeholder="邮箱/手机号码/农园帐号">
                           <input type="password" placeholder="密码" name="password" id="password">
                           <input class="btnadpt btn_orange" id="login-button" type="submit" value="立即登录">
                         </form>
                            <fieldset class="oth_type_tit">
                              <legend style="text-align:center;" class="oth_type_txt">其他方式登录</legend>
                            </fieldset>
                            <img src="images/qq.png" alt="">
                            <img src="images/weobo.png" alt="">
                            <img src="images/zhifubao.png" alt="">
                         </div>
                         <a href="">
                              <a class="link" data-toggle="modal" data-target="#zhuce" href="#"><span>注册农园账号</span></a>
                              <span>|</span>
                              <span>忘记密码</span>
                            </a>
                      </div><!-- /.modal-content -->
                </div><!-- /.modal -->
                </div>
                
                 <!-- 模态框(Modal)2 -->
                <div class="modal fade" id="zhuce" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
                   <div class="modal-dialog">
                      <div class="modal-content text-center">
                         <div class="modal-header text-center">
                            <button type="button" class="close" 
                               data-dismiss="modal" aria-hidden="true">
                                  &times;
                            </button>
                            <h1 class="modal-title" id="myModalLabel">
                               注册农园账号
                            </h1>
                         </div>
                         <div class="modal-body text-center">
                          <form>
                           <input class="item_account" autocomplete="off" type="text" name="user" id="username" placeholder="中国(+86)">
                           <input type="tel" placeholder="请输入手机号" name="pwd" id="pwd">
                           <input style="width:170px;" class="code" type="text" name="icode" autocomplete="off" placeholder="图片验证码">
                           <img style="margin-top:-47px;float:right;" alt="图片验证码" title="看不清换一张" class="icode_image" src="img/yzm.png">
                           <input class="btnadpt btn_orange" id="login-button" type="submit" value="立即注册">
                           </form>
                            <p class="msg">
                            点击“立即注册”，即表示您同意并愿意遵守农园
                            <a href="http://www.miui.com/res/doc/eula/cn.html" target="_blank" title="用户协议">用户协议</a>
                            和
                            <a href="http://www.miui.com/res/doc/privacy/cn.html" target="_blank" title="隐私政策">隐私政策</a>
                            </p>
                      </div><!-- /.modal-content -->
                </div><!-- /.modal -->
              </div>
              </div>
</body>
</html>