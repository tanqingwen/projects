<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="tags" tagdir="/WEB-INF/tags" %>

<!DOCTYPE html>
<html>

	<head>
		<title>综合管理系统 | 角色添加</title>
		<meta charset="utf-8" />
		<meta http-equiv="X-UA-Compatible" content="IE=edge" />
		<tags:head_common_content/>
		<link rel="stylesheet" href="${assets }/css/others.css" />
		<link rel="stylesheet" href="${assets}/ztree/css/metro/metro.css" type="text/css">
		<link rel="stylesheet" href="${assets}/ztree/css/metro/department.css" />
		<link rel="stylesheet" href="${assets}/ztree/css/metro/demo.css" type="text/css">
		<link rel="stylesheet" href="${assets}/ztree/css/metro/metroStyle.css" type="text/css">
	</head>
	<body class="hold-transition skin-blue-light sidebar-mini">
	<div class="wrapper">
	  <!-- Main header -->
      <tags:main_header/>
      
      <!-- Left side column. contains the logo and sidebar -->
      <tags:main_sidebar active="role"/>
      
      <!-- Content Wrapper. Contains page content -->
      <div class="content-wrapper">
      	<div class="context-tips">
      		<tags:action_tip/>
      	</div>
        <!-- Content Header (Page header) -->
        <section class="content-header">
          <h1>角色添加</h1>
          <ol class="breadcrumb">
            <li><a href="${ctx }/"><i class="fa fa-dashboard"></i> 主页</a></li>
            <li><a href="${ctx }/startTreeviewDetail/xtgl">系统管理</a></li>
            <li><a href="${ctx }/role/list">角色管理</a></li>
            <li class="active">角色添加</li>
          </ol>
        </section>
	
		<div class="container-fluid common staffAdd">
			<div class="row">
				<div class="tip-img">
					<p>角色添加</p>
				</div>
				<div class="content">
					<div class="main">
						<h3 style="border-bottom: 2px dashed #45a0e0;">添加表单</h3>
						<form class="form-inline form-horizontal" id="roleForm" method="post" action="${ctx }/role/add">
							<div class="col-md-12">
								<div class="col-md-6">
									<div class="form-group">
										<label>角色ID<span class="color-red">*</span>:</label>
										<input class="form-control  line-input" type="text" maxlength="20" id="id" name="id" />
									</div>
								</div>
								<div class="col-md-6">
									<div class="form-group">
										<label>角色名称:</label>
										<input class="form-control  line-input" type="text" id="name" name="name"/>
									</div>
								</div>
							</div>
						

								<h3 style="border-bottom: 2px dashed #6fba2c;" class="clearfix">功能列表</h3>
								<div class="content_wrap" style="min-height: 100%;">
									<div class="zTreeDemoBackground" style="margin-top: 20px;">
										<ul class="list">
											<li class="title">&nbsp;&nbsp;Test: <input id="functions"
												name="functions" type="text" readonly value="${item.functions}"
												style="width: 120px;" onclick="showMenu();" /></li>
										</ul>
										<div id="menuContent" class="menuContent" style="">
											<ul id="treeDemo" class="ztree"
												style="margin-top: 0; width: 180px;"></ul>
										</div>
									</div>
								</div>
								<%-- 	<div class="clearfix tableContent roleContent">
							<div class="roleList col-md-12">
							<c:forEach var="function" items="${functions }">
								<div class="col-md-6">
									<div class="listBox">
										<span class="listBoxLeft col-md-1 text-center">
											<input type="checkbox" name="functions" value="${function.id }" style="zoom:100%;"/>
										</span>
										<span class="col-md-8">${function.name }</span>
									</div>
								</div>
							</c:forEach>
								
							</div>
						</div> --%>
						
						<div class="col-lg-12 submit-group marginBottom marginTop">
							<a href="${ctx }/role/list" class="form-a">&lt;返回</a>
							<div class="btn-group fr">
								<button id="addButton" type="submit" class="btn-size" style="width:110px;" >添加</button>

							</div>
						</div>
						</form>
					</div>
				</div>

			</div>
		</div>
</div><!-- /.box -->
        <!-- /.content -->
      </div><!-- /.content-wrapper -->
      <tags:main_footer/>

      <!-- Control Sidebar -->
      <tags:control_sidebar/>
    <!-- ./wrapper -->
    
    <tags:load_common_js/>
    <script src="${assets}/datepicker/datepicker.js"></script>
	<script src="${assets}/datepicker/locales/zh-CN.js"></script>
    <script src="${assets}/validator/js/validator.js"></script>
    <script type="text/javascript" src="${assets}/ztree/js/ztree.all.min.js"></script>
	<script type="text/javascript" src="${assets}/ztree/js/ztree.core.js"></script>
	<script type="text/javascript" src="${assets}/ztree/js/ztree.excheck.js"></script>
	<script type="text/javascript" src="${assets}/ztree/js/ztree.exedit.js"></script>
    <script type="text/javascript">
		$(document).ready(function(){
			$('#roleForm').bootstrapValidator({
				message: 'This value is not valid',   
	   			feedbackIcons: {
	 				valid: 'glyphicon glyphicon-ok',         
	 				invalid: 'glyphicon glyphicon-remove',         
	 				validating: 'glyphicon glyphicon-refresh'    
	 			},
	 			fields: {
	 				id: {
						validators: {
							notEmpty: {
								message: '角色ID不能为空'
	 						}
	 					}
	 				} 
	 			}									 
			});
		});
		$(function () {
			$("#addButton").click(function(){
				var role=document.getElementsByName("functions"); 

				var password =$("#password");		 
				password.val(CryptoJS.MD5(password.val()));			 	
			});
		});
		
		//角色添加结构树
		var setting = {
			check : {
				enable : true
			},
			view : {
				dblClickExpand : false
			},
			data : {
				simpleData : {
					enable : true
				}
			},
			callback : {
				
				onCheck : onCheck
			}
		};
	 	var zNodes = ${functions}; 

		$(document).ready(function() {
			var cityObj = $("#functions").val();
			var arr = cityObj.split(",");
			for (var i = 0; i < arr.length; i++) {
				for (var j = 0; j < zNodes.length; j++) {
					if (zNodes[j].funtid == arr[i]) {
						zNodes[j].checked = true;
					}
				}
			}
			$.fn.zTree.init($("#treeDemo"), setting, zNodes);

		});

		function beforeClick(treeId, treeNode) {
			var zTree = $.fn.zTree.getZTreeObj("treeDemo");
			zTree.checkNode(treeNode, !treeNode.checked, null, true);
			return false;
		}

		function onCheck(e, treeId, treeNode) {
			var zTree = $.fn.zTree.getZTreeObj("treeDemo"), nodes = zTree
					.getCheckedNodes(true), v = "";
			for (var i = 0, l = nodes.length; i < l; i++) {
				v += nodes[i].funtid + ",";
			}
			if (v.length > 0)
				v = v.substring(0, v.length - 1);
			var cityObj = $("#functions");
			cityObj.attr("value", v);
		}

		function showMenu() {

			var cityObj = $("#functions");
			var cityOffset = $("#functions").offset();

			$("#menuContent").show();

			$("body").bind("mousedown", onBodyDown);
		}

		function hideMenu() {
			$("#menuContent").fadeOut("fast");
			$("body").unbind("mousedown", onBodyDown);
		}

		function onBodyDown(event) {
			if (!(event.target.id == "menuBtn" || event.target.id == "functions"
					|| event.target.id == "menuContent" || $(event.target)
					.parents("#menuContent").length > 0)) {
				hideMenu();
			}
		}
    </script>
	</body>

</html>