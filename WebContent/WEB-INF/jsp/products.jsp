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
    <link href="<%=SystemPropertiesUtil.getPropetiesValueByKey(Constant.STATIC_URL)%>/static/css/home.css" rel="stylesheet">
    <link href="<%=SystemPropertiesUtil.getPropetiesValueByKey(Constant.STATIC_URL)%>/static/css/index.css" rel="stylesheet">
    <script type="text/javascript" src="<%=SystemPropertiesUtil.getPropetiesValueByKey(Constant.STATIC_URL) %>/static/js/lib/jquery-3.1.1.min.js"></script>
    <script src="https://cdn.bootcss.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>
</head>
<body>
<div style="background: #DDD;">
        <div class="container">
            <div class="row" style="margin-top:10px;">
                <div class="col-md-1">
                    <span>所在地:</span>
                </div>
                <div class="col-md-1" style="margin-left:-40px;">
                   <select>
                       <option>湖北</option>
                       <option>河南</option>
                   </select>
                </div>
                <div class="col-md-3" style="margin-left:-23px;">
                    <span style="color:#F47A11">你好，欢迎来到惠农农产品交易平台</span>
                </div>
                <div class="col-md-1" style="margin-left:-55px;">
                    <span><a href="<%=PathUtil.getFullPath("home/login")%>" style="color:#000">请登陆</a></span>
                </div>
                <div class="col-md-1" style="margin-left:-41px;">
                    <span><a href="#" style="color:#000">免费注册</a></span>
                </div>
                <div class="col-md-2 pull-right">
                    <ul class="list-inline">
                        <li style="margin-left:26px;">我的惠农</li>
                        <li style="margin-left:5px;">联系我们</li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
    <div class="container">
        <div class="row">
            <div class="col-md-3">
                <img src="<%=SystemPropertiesUtil.getPropetiesValueByKey(Constant.STATIC_URL)%>/static/images/logo.jpg"></img>
            </div>
            <div class="col-md-2 pull-right" style="margin-right:-33px;margin-top:58px;">
                <a class="btn btn-success" href="#">
                    <i class="glyphicon glyphicon-shopping-cart icon-white">我的购物车</i>
                </a>
            </div>
            <div class="col-md-4 pull-right" style="margin-right:-23px;margin-top:29px;">
                <div class="col-md-12">
                    <ul class="list-inline">
                        <li>供应</li>
                        <li>供应商</li>
                        <li>采购</li>
                        <li>资讯</li>
                    </ul>
                </div>
                <div class="col-md-12">
                    <div class="input-group">
                        <input type="text" class="form-control" placeholder="输入货品名称" aria-describedby="basic-addon2">
                        <span class="input-group-addon" id="basic-addon2" style="background:#5CB85C;color:#FFF">搜索</span>
                    </div>
                </div>
            </div>

        </div>
    </div>
    <div style="background: #009237;">
        <div class="container">
            <ul class="nav nav-pills">
                <li class="active" style="width:194px;text-align:center;background-color: #0da944;"><a href="#" style="color:#FFF">惠农市场</a></li>
                <li><a href="#" style="color:#FFF;width:110px;text-align:center;">供应大厅</a></li>
                <li><a href="#" style="color:#FFF;width:110px;text-align:center;">采购大厅</a></li>
            </ul>
        </div>
    </div>
    <div class="container">
    <div class="row" style="margin-top:10px;">
        <div class="col-md-12">
            <img src="<%=SystemPropertiesUtil.getPropetiesValueByKey(Constant.STATIC_URL)%>/static/images/test6.jpg" style="height:85px;"></img>
        </div>
    </div>
    <div class="row" style="margin-left:-15px;margin-right:15px;margin-top:10px;">
        <div class="col-md-10">
            <div class="row">
                <div class="col-md-12">
                    <ul class="breadcrumb" style="margin-bottom:10px;">
                        <li>
                            <a href="#">Home</a> <span class="divider">/</span>
                        </li>
                        <li>
                            <a href="#">Type</a> <span class="divider">/</span>
                        </li>
                        <li class="active">Data</li>
                    </ul>
                </div>
            </div>
            <div class="row" style="margin-right:16px;">
                <div class="col-md-12" style="border: 1px solid #EEE;margin-left:16px;">
                    <div class="col-md-1" style="background: #DDD;margin-left:-15px;height:36px;">
                        <p style="text-align:center;margin-top:9px;">品种</p>
                    </div>
                    <div class="col-md-11">
                        <ul class="list-inline" style="margin-bottom:0px;margin-top:6px;">
                            <li class="active"><button>不限</button></li>
                            <li>test1</li>
                            <li>test2</li>
                            <li>test3</li>
                            <li>test4</li>
                            <li>test5</li>
                            <li>test6</li>
                        </ul>
                    </div>
                </div>
                <div class="col-md-12" style="border: 1px solid #EEE;margin-left:16px;border-top:none;border-bottom:none;">
                    <div class="col-md-1" style="background: #DDD;margin-left:-15px;height:36px;">
                        <p style="text-align:center;margin-top:9px;">用途</p>
                    </div>
                    <div class="col-md-11">
                        <ul class="list-inline" style="margin-bottom:0px;margin-top:6px;">
                            <li class="active"><button>不限</button></li>
                            <li>test1</li>
                            <li>test2</li>
                            <li>test3</li>
                            <li>test4</li>
                            <li>test5</li>
                            <li>test6</li>
                        </ul>
                    </div>
                </div>
                <div class="col-md-12" style="border: 1px solid #EEE;margin-left:16px;">
                    <div class="col-md-1" style="background: #DDD;margin-left:-15px;height:36px;">
                        <p style="text-align:center;margin-top:9px;">地区</p>
                    </div>
                    <div class="col-md-11">
                        <ul class="list-inline" style="margin-bottom:0px;margin-top:6px;">
                            <li class="active"><button>不限</button></li>
                            <li>test1</li>
                            <li>test2</li>
                            <li>test3</li>
                            <li>test4</li>
                            <li>test5</li>
                            <li>test6</li>
                        </ul>
                    </div>
                </div>
            </div>
            <div class="row" style="margin-top:13px;margin-left:1px;margin-right:1px;">
                <div class="col-md-12" style="background:whiteSmoke;">
                    <ul class="nav nav-pills pull-left" style="margin-left:-14px;">
                        <li class="active"><a href="#" style="color:#FFF">综合</a></li>
                        <li><a href="#" style="color:#000">最新</a></li>
                    </ul>
                    <div class="pull-right">
                            <ul class="list-inline" style="margin-top:11px;">
                                <li>
                                    <a href="#" aria-label="Previous">
                                        <span aria-hidden="true">&laquo;</span>
                                    </a>
                                </li>
                                <li><a href="#">1</a></li>
                                <li><a href="#">/</a></li>
                                <li><a href="#">5</a></li>
                                <li>
                                    <a href="#" aria-label="Next">
                                        <span aria-hidden="true">&raquo;</span>
                                    </a>
                                </li>
                            </ul>
                    </div>
                </div>
            </div>
            <div class="row" style="margin-left:1px;margin-right:1px;">
                <ul class="list-inline">
                    <li class="col-md-3" style="border: 1px solid #EEE;margin-top:13px;">
                        <a href="<%=PathUtil.getFullPath("home/product")%>" class="thumbnail" style="margin-bottom:8px;">
                            <img src="<%=SystemPropertiesUtil.getPropetiesValueByKey(Constant.STATIC_URL)%>/static/images/test7.JPEG">
                        </a>
                        <p style="color:red;margin-left:3px;margin-bottom:2px;">￥18元/斤</p>
                        <p style="margin-left:3px;margin-bottom:2px;">product1</p>
                        <p style="margin-left:3px;margin-bottom:2px;">shopper</p>
                    </li>
                    <li class="col-md-3" style="border: 1px solid #EEE;margin-top:13px;">
                        <a href="<%=PathUtil.getFullPath("home/product")%>" class="thumbnail" style="margin-bottom:8px;">
                            <img src="<%=SystemPropertiesUtil.getPropetiesValueByKey(Constant.STATIC_URL)%>/static/images/test7.JPEG">
                        </a>
                        <p style="color:red;margin-left:3px;margin-bottom:2px;">￥18元/斤</p>
                        <p style="margin-left:3px;margin-bottom:2px;">product1</p>
                        <p style="margin-left:3px;margin-bottom:2px;">shopper</p>
                    </li>
                    <li class="col-md-3" style="border: 1px solid #EEE;margin-top:13px;">
                        <a href="<%=PathUtil.getFullPath("home/product")%>" class="thumbnail" style="margin-bottom:8px;">
                            <img src="<%=SystemPropertiesUtil.getPropetiesValueByKey(Constant.STATIC_URL)%>/static/images/test7.JPEG">
                        </a>
                        <p style="color:red;margin-left:3px;margin-bottom:2px;">￥18元/斤</p>
                        <p style="margin-left:3px;margin-bottom:2px;">product1</p>
                        <p style="margin-left:3px;margin-bottom:2px;">shopper</p>
                    </li>
                    <li class="col-md-3" style="border: 1px solid #EEE;margin-top:13px;">
                        <a href="<%=PathUtil.getFullPath("home/product")%>" class="thumbnail" style="margin-bottom:8px;">
                            <img src="<%=SystemPropertiesUtil.getPropetiesValueByKey(Constant.STATIC_URL)%>/static/images/test7.JPEG">
                        </a>
                        <p style="color:red;margin-left:3px;margin-bottom:2px;">￥18元/斤</p>
                        <p style="margin-left:3px;margin-bottom:2px;">product1</p>
                        <p style="margin-left:3px;margin-bottom:2px;">shopper</p>
                    </li>
                    <li class="col-md-3" style="border: 1px solid #EEE;margin-top:13px;">
                        <a href="<%=PathUtil.getFullPath("home/product")%>" class="thumbnail" style="margin-bottom:8px;">
                            <img src="<%=SystemPropertiesUtil.getPropetiesValueByKey(Constant.STATIC_URL)%>/static/images/test7.JPEG">
                        </a>
                        <p style="color:red;margin-left:3px;margin-bottom:2px;">￥18元/斤</p>
                        <p style="margin-left:3px;margin-bottom:2px;">product1</p>
                        <p style="margin-left:3px;margin-bottom:2px;">shopper</p>
                    </li>
                    <li class="col-md-3" style="border: 1px solid #EEE;margin-top:13px;">
                        <a href="<%=PathUtil.getFullPath("home/product")%>" class="thumbnail" style="margin-bottom:8px;">
                            <img src="<%=SystemPropertiesUtil.getPropetiesValueByKey(Constant.STATIC_URL)%>/static/images/test7.JPEG">
                        </a>
                        <p style="color:red;margin-left:3px;margin-bottom:2px;">￥18元/斤</p>
                        <p style="margin-left:3px;margin-bottom:2px;">product1</p>
                        <p style="margin-left:3px;margin-bottom:2px;">shopper</p>
                    </li>
                    <li class="col-md-3" style="border: 1px solid #EEE;margin-top:13px;">
                        <a href="<%=PathUtil.getFullPath("home/product")%>" class="thumbnail" style="margin-bottom:8px;">
                            <img src="<%=SystemPropertiesUtil.getPropetiesValueByKey(Constant.STATIC_URL)%>/static/images/test7.JPEG">
                        </a>
                        <p style="color:red;margin-left:3px;margin-bottom:2px;">￥18元/斤</p>
                        <p style="margin-left:3px;margin-bottom:2px;">product1</p>
                        <p style="margin-left:3px;margin-bottom:2px;">shopper</p>
                    </li>
                    <li class="col-md-3" style="border: 1px solid #EEE;margin-top:13px;">
                        <a href="<%=PathUtil.getFullPath("home/product")%>" class="thumbnail" style="margin-bottom:8px;">
                            <img src="<%=SystemPropertiesUtil.getPropetiesValueByKey(Constant.STATIC_URL)%>/static/images/test7.JPEG">
                        </a>
                        <p style="color:red;margin-left:3px;margin-bottom:2px;">￥18元/斤</p>
                        <p style="margin-left:3px;margin-bottom:2px;">product1</p>
                        <p style="margin-left:3px;margin-bottom:2px;">shopper</p>
                    </li>
                </ul>
            </div>
        </div>
        <div class="col-md-2">
            <img src="<%=SystemPropertiesUtil.getPropetiesValueByKey(Constant.STATIC_URL)%>/static/images/test8.jpg" style="height:312px;margin-left:-18px;"></img>
        </div>
    </div>
</div>
</body>
</html>