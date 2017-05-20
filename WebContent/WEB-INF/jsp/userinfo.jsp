<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="com.wtu.product.Constant" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="com.wtu.product.util.SystemPropertiesUtil" %>
<%@ page import="com.wtu.product.util.PathUtil"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>我的信息</title>
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
   <!--header end here-->
   <div class="row">
                    <form class="form-horizontal" action="<%=PathUtil.getFullPath("goods/create")%>" method="post" enctype="multipart/form-data">
                        <div class="form-group">
                            <label class="col-md-2 control-label">用户名:</label>
                            <div class="col-md-8">
                                <div class="input-group">                           
                                    <input id="goods_name" name="goods_name" type="text" class="form-control1" value="${USER.userName}">
                                </div>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-md-2 control-label">用户昵称:</label>
                            <div class="col-md-8">
                                <div class="input-group">                           
                                    <input id="goods_name" name="goods_name" type="text" class="form-control1" value="${USER.nickname}">
                                </div>
                            </div>
                        </div><div class="form-group">
                            <label class="col-md-2 control-label">用户类型:</label>
                            <div class="col-md-8">
                                <div class="input-group">                           
                                    <input id="goods_name" name="goods_name" type="text" class="form-control1" value="${USER.role}" readonly="readonly">
                                </div>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-md-2 control-label">联系方式:</label>
                            <div class="col-md-8">
                                <div class="input-group">                           
                                    <input id="goods_name" name="goods_name" type="text" class="form-control1" value="${USER.phone}">
                                </div>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-md-2 control-label">性别:</label>
                            <div class="col-md-8">
                                <div class="input-group">                           
                                    <input id="goods_name" name="goods_name" type="text" class="form-control1" value="${USER.sex}">
                                </div>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-md-2 control-label">所在地址:</label>
                            <div class="col-md-8">
                                <div class="input-group">                           
                                    <input id="goods_name" name="goods_name" type="text" class="form-control1" value="${USER.address}">
                                </div>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-md-2 control-label">注册时间:</label>
                            <div class="col-md-8">
                                <div class="input-group">                           
                                    <input id="goods_name" name="goods_name" type="text" class="form-control1" value="${USER.createTime}">
                                </div>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-md-2 control-label">上次更新时间:</label>
                            <div class="col-md-8">
                                <div class="input-group">                           
                                    <input id="goods_name" name="goods_name" type="text" class="form-control1" value="${USER.updateTime==null?'暂无更新记录':'USER.updateTime'}">
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-sm-8 col-sm-offset-2">
                                <button class="btn-success btn">更新信息</button>
                                <button class="btn-default btn">取消</button>
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