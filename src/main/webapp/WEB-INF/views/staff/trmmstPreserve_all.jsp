<%@ page language="java" pageEncoding="UTF-8" trimDirectiveWhitespaces="true" isErrorPage="true" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="app" uri="http://www.hp.com/jsp/functions" %>
<%@ taglib prefix="tags" tagdir="/WEB-INF/tags" %>
<!DOCTYPE html>
<html>
	<head>
		<title>综合管理系统  | 终端列表</title>
		<tags:head_common_content/>
		<link rel="stylesheet" href="${assets}/venue/css/layer.css" />
		<link rel="stylesheet" href="${assets}/venue/css/venueAll.css" />
	</head>
	<body class="hold-transition skin-blue-light sidebar-mini">
		<div class="wrapper">
			<!-- Main header -->
			<tags:main_header/>
			
			<!-- Left side column. contains the logo and sidebar -->
			<tags:main_sidebar active="merchant"/>
			
			<!-- Content Wrapper. Contains page content -->
			<div class="content-wrapper">
				<div class="context-tips">
		      		<tags:action_tip/>
		      	</div>
				<!-- Content Header (Page header) -->
				<section class="content-header">
					<h1>终端列表</h1>
					<ol class="breadcrumb">
						<li><a href="${ctx }/"><i class="fa fa-dashboard"></i> 主页</a></li>
						<li><a href="${ctx }/startTreeviewDetail/ywgl">业务管理</a></li>
						<li class="active">终端列表</li>
					</ol>
				</section>

				<!-- Main content -->
				<div class="container-fluid">
			<div class="row">
				<div class="tip-img"><p>终端列表</p></div>
				<div class="content">
					<div class="main">
						<h3 style="border-bottom: 2px dashed #45a0e0;">查询表单</h3>
						<form id="defaultForm" name="defaultForm" class="form-horizontal" action="${ctx}/staff/venuePreserve_list1" method="post">
							<div class="form-line clearfix">
								<div class="col-lg-12 col-md-12 clearfix ">
									<div class="col-lg-6 col-md-6">
										<div class="form-group ">
											<label for="merchantID" class="col-sm-3 control-label">商户号码：</label>
											<!-- <input class="form-control formConl line-input" type="text" name="" id="" /> -->
											<input class="form-control formConl line-input" id="merchantNo" name="merchantNo" value="${mmMerchantNo }">
											
										</div>
									</div>
									<div class="col-lg-6 col-md-6">
										<div class="form-group ">
											<label for="">商户名称：</label>
											<input class="form-control formConl line-input" type="text" name="mmBizName" id="mmBizName" value="${ mmBizName}" />
										</div>
									</div>
								</div>
							</div>
							
							<div class="col-lg-12 col-md-12">
								<!-- <button type="submit" class="btn btnclear" style="background:;">返回</button> -->
								<a href="JavaScript:history.go(-1)" class="form-a" >&lt;返回</a>
								
								<!-- <button class="btn venueBtn btn-size fr">查询</button> -->
							</div>

							<h3 style="border-bottom: 2px dashed #6fba2c;" class="clearfix">查询列表</h3>

							<div class="col-lg-12 col-md-12 clearfix">
								<div class="checkList">
									<table class="table table-responsive">
										<thead>
											<tr>
												<th>终端编号</th>
												<th>安装日期</th>
												<th>取消日期</th>
												<th>最后付款</th>
												<th>最后批次</th>

											</tr>
										</thead>
										<tbody>
											<c:forEach var="item" items="${pageInfo.list}">
												<tr>
													<td>${item.tmTerminalId}</td>				                                  
				                                    <td>${item.tmDateInst}</td>
				                                    <td>${item.tmDateCanx}</td>
				                                    <td>${item.tmLastSettleDate}</td>
				                                    <td>${item.tmLastBatchNo}</td>
												</tr>
											</c:forEach>
										</tbody>
									</table>
								</div>

							</div>
								<div class="box-footer">
									<tags:pagination url="${ctx}/merchant/list" page="${pageInfo}" cssClass="pull-right"/>
									<!--  
										<a type="button" class="btn btn-default" id="cancleSubmit"><i class="glyphicon glyphicon-chevron-left" ></i> 返回</a>
									-->
								</div>
						</form>

					</div>
				</div>
			</div>
		</div>
			</div><!-- /.content-wrapper -->
	      
			<!-- Main footer -->
			<tags:main_footer/>
			
			<!-- Control Sidebar -->
			<tags:control_sidebar/>
      
		</div><!-- ./wrapper -->

		<tags:load_common_js/>
		<script type="text/javascript">
			
			
			/*  $("#cancles").click(function(){
				//根据商户号查询商户记录
				//location.href="${ctx}/staff/merchantPreserve";
			 location.href="${ctx}/staff/venuePreserve_list"+"/"+${};
			 }); */
			
		</script>
	</body>
</html>
