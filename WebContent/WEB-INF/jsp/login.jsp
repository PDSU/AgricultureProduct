<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="com.wtu.product.Constant" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="com.wtu.product.util.SystemPropertiesUtil" %>
<%@ page import="com.wtu.product.util.PathUtil"%>
<!DOCTYPE HTML>
<html>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>惠农网</title>
    <link rel="stylesheet" href="https://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
    <link href="<%=SystemPropertiesUtil.getPropetiesValueByKey(Constant.STATIC_URL)%>/static/css/main.css" rel="stylesheet">
    <link href="<%=SystemPropertiesUtil.getPropetiesValueByKey(Constant.STATIC_URL)%>/static/css/index.css" rel="stylesheet">
    <script type="text/javascript" src="<%=SystemPropertiesUtil.getPropetiesValueByKey(Constant.STATIC_URL) %>/static/js/lib/jquery-3.1.1.min.js"></script>
    <script src="https://cdn.bootcss.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>
</head>
<body>
<div class="container">
   <div class="row" style="margin-top:20px;">
       <div class="col-md-5">
           <div class="col-md-6">
               <img src="<%=SystemPropertiesUtil.getPropetiesValueByKey(Constant.STATIC_URL)%>/static/images/logo1.jpg"></img>
           </div>
           <div class="col-md-6" style="margin-top:-5px;margin-left:-14px;">
               <h4 style="margin-bottom:0px;">user login</h4>
               <small style="margin-top:-10px;">tell:5558563</small>
           </div>
       </div>
       <div class="col-md-1"></div>
       <div class="col-md-2">
           <div class="col-md-4">
               <img style="margin-top:8px;" src="<%=SystemPropertiesUtil.getPropetiesValueByKey(Constant.STATIC_URL)%>/static/images/top_ico_01.jpg"></img>
           </div>
           <div class="col-md-5">
               <h4 style="margin-bottom:0px;">hailing</h4>
               <small style="margin-top:-10px;">update</small>
           </div>
           <div class="col-md-1" style="margin-left:10px;;margin-top:8px;;height:41px; width:1px; border-left:1px #999 solid"></div>
       </div>
       <div class="col-md-2" style="margin-left:-62px;">
           <div class="col-md-4">
               <img style="margin-top:8px;" src="<%=SystemPropertiesUtil.getPropetiesValueByKey(Constant.STATIC_URL)%>/static/images/top_ico_02.jpg"></img>
           </div>
           <div class="col-md-5">
               <h4 style="margin-bottom:0px;">shopp</h4>
               <small style="margin-top:-10px;">free</small>
           </div>
           <div class="col-md-1" style="margin-left:10px;;margin-top:8px;height:41px; width:1px; border-left:1px #999 solid"></div>
       </div>
       <div class="col-md-2" style="margin-left:-62px;">
           <div class="col-md-4">
               <img style="margin-top:8px;" src="<%=SystemPropertiesUtil.getPropetiesValueByKey(Constant.STATIC_URL)%>/static/images/top_ico_03.jpg"></img>
           </div>
           <div class="col-md-5">
               <h4 style="margin-bottom:0px;">product</h4>
               <small style="margin-top:-10px;">good</small>
           </div>
       </div>
   </div>
   <div class="row">
       <hr>
   </div>
   <div class="row">
       <div class="col-md-6">
           <img style="margin-top:8px;" src="<%=SystemPropertiesUtil.getPropetiesValueByKey(Constant.STATIC_URL)%>/static/images/background.jpg"></img>
       </div>
       <div class="col-md-6" style="margin-top:75px;">
           <div style="border: 1px solid #EEE;width:350px;margin-left:37px;">
               <div class="row">
                   <h3 class="text-center">Login</h3>
               </div>
               <hr>
               <form action="@routes.Application.submit()" method="post">
                   <div class="input-prepend" style="margin-left:75px;">
                       <span><i class="glyphicon glyphicon-user"></i></span>
                       <input type="text" style="width:180px;" placeholder="phone/email/username" id="@loginFormData("loginName").id" name="@loginFormData("loginName").name" value="@loginFormData("loginName").value">
                   </div>
                   <div class="input-prepend" style="margin-left:75px;margin-top:10px;">
                       <span><i class="glyphicon glyphicon-lock"></i></span>
                       <input type="password" style="width:180px;" placeholder="password" id="@loginFormData("password").id" name="@loginFormData("password").name" value="@loginFormData("loginName").value">
                   </div>
               </form>
               <button class="btn btn-success" style="margin-left:75px;margin-top:22px;width:200px;" type="submit">Login</button>
               <div class="col-md-12" style="margin-top:2px;">
                   <a href="#" class="pull-left" style="margin-left:61px;">register</a>
                   <a href="#" class="pull-right" style="margin-right:55px;">password</a>
                </div>
                <br><br><br><br>
            </div>
        </div>
    </div>
</div>
</body>
</html>