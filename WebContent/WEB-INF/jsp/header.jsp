<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="com.wtu.product.Constant" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="com.wtu.product.util.SystemPropertiesUtil" %>
<%@ page import="com.wtu.product.util.PathUtil"%>
<!--header start here-->
    <div class="site-topbar navbar-fixed-top">
                <% if(request.getSession().getAttribute("USER") == null){ %>
                <div class="leftbar">
                  <span>欢迎来到农园，</span><a class="link" data-toggle="modal" data-target="#denglu" href="#">请登录</a><span class="sep">|</span>
                  <a class="link" data-toggle="modal" data-target="#zhuce" href="#">注册</a>
                </div>
                <div class="rightbar">
                    <a>我的信息</a>
                    <a>我的购物车</a>
                    <a>我的订单</a>
                </div>
                <% } else { %>
                <div class="leftbar">
                  <span>欢迎您，${USER.nickname}</span><span class="sep">|</span>
                  <a class="link" href="<%=PathUtil.getFullPath("user/logout")%>">退出登录</a>
                </div>
                <div class="rightbar">
                    <a class="link" href="<%=PathUtil.getFullPath(Constant.LOGIN_URL_PAGE)%>">首页</a>
                    <a class="link" href="<%=PathUtil.getFullPath("user/userinfo")%>">我的信息</a>
                    <a class="link" href="#">我的购物车</a>
                    <a class="link" href="#">我的订单</a>
                    <a class="link" href="#">我的消息</a>
                    <c:if test="${USER.role == 2}">
                        <a class="link" href="#">我的商品</a>
                    </c:if>
                </div>
                <%}%>
       </div>
   <!--header end here-->