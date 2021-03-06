<%@ page language="java" pageEncoding="UTF-8" trimDirectiveWhitespaces="true" isErrorPage="true" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="app" uri="http://www.hp.com/jsp/functions" %>
<%@ taglib prefix="tags" tagdir="/WEB-INF/tags" %>
<!DOCTYPE html>
<html>
	<head>
		<title>综合管理系统  | 商户列表</title>
		<tags:head_common_content/>
		<link rel="stylesheet" type="text/css" href="${assets}/venue/css/bootstrap.min.css" />
		<link rel="stylesheet" href="${assets}/venue/css/layer.css" />
		<link rel="stylesheet" href="${assets}/venue/css/venueAll.css" />
		<link rel="stylesheet" href="${assets}/venuePreserve/css/all.css" />
		<style>
			.pagination>.active>a, .pagination>.active>a:focus, .pagination>.active>a:hover, .pagination>.active>span, .pagination>.active>span:focus, .pagination>.active>span:hover{
				border-color: #00a65a;
       			background-color: #00a65a;
			}
		</style>
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
					<h1>商户列表</h1>
					<ol class="breadcrumb">
						<li><a href="${ctx }/"><i class="fa fa-dashboard"></i> 主页</a></li>
						<li><a href="${ctx }/startTreeviewDetail/xcgl">现场管理</a></li>
						<li><a href="${ctx}/staff/merchantDataEntering">场馆查询</a></li>
						<li class="active">商户列表</li>
					</ol>
				</section>

				<!-- Main content -->
				<div class="container-fluid">
			<div class="row">
				<div class="tip-img"><p>商户列表</p></div>
				<div class="content">
					<div class="main">
						<h3 style="border-bottom: 2px dashed #45a0e0;">查询表单</h3>
						<form id="defaultForm" name="defaultForm" class="form-horizontal" action="${ctx}/staff/searchVenueResultList" method = "post">
							<div class="form-line clearfix">
								<div class="col-lg-12 col-md-12 clearfix ">
									<div class="col-lg-6 col-md-6">
										<div class="form-group ">
											<!-- <label for="venueNum">场馆号码：</label> -->
											<label for="merchantID" class="col-sm-3 control-label">场馆号码</label>
											<%-- <div  class="col-sm-9 line-input">${mmMerchantNo}</div> --%>
											<input class="form-control formConl line-input" type="text" name="venueNum" id="venueNum" value="${mmMerchantNo}" />
										</div>
									</div>
									<div class="col-lg-6 col-md-6">
										<div class="form-group ">
											<!-- <label for="venueName">场馆名称：</label>
											<input class="form-control formConl line-input" type="text" name="venueName" id="venueName" /> -->
											 <label for="merchantTName" class="col-sm-3 control-label">场馆名称:</label>
			                      			<%--  <div class="col-sm-9 line-input">${mmBizName }</div> --%>
			                      			<input class="form-control formConl line-input" type="text" name="venueName" id="venueName" value="${mmBizName }" />
										</div>
									</div>
								</div>
							</div>
						

							<h3 style="border-bottom: 2px dashed #6fba2c;" class="clearfix">查询列表</h3>

							<div class="col-lg-12 col-md-12 clearfix">
								<div class="checkList">
									<table class="table table-responsive">
										<thead>
											<tr>
												<th>场馆号码</th>
												<th>场馆名称</th>
												<th>场馆简称</th>
												<th>操作</th>

											</tr>
										</thead>
										<tbody>
												<c:forEach var="item" items="${pageInfo.list}">
												<tr>
													<td>${item.mmMerchantNo}</td>				                                  
				                                    <td>${item.mmBizName}</td>
				                                    <td>${item.mmStmtName}</td>
				                                    <td class="operationAll">
					                                    <%-- <c:if test="${app:checkPermission('VENUEMERMST_TLIST') }"> --%>
					                                    	<a href="${ctx}/staff/trmmstPreserve_list/${item.mmMerchantNo}">
					                                    		<span class="check">终端列表</span>
					                                    	</a>
					                                    <%-- </c:if> --%>
				                                    </td>
				                                    <%-- <td>
														<div class="btn-toolbar pull-right" role="toolbar">
															<div class="btn-group">	
																<c:if test="${app:checkPermission('VENUEMERMST_TLIST') }">
																	<a type="button" class="btn btn-default btn-xs" title="终端列表" href="${ctx}/staff/trmmstPreserve_list/${item.mmMerchantNo}"><i class="fa fa-fw fa-eye" aria-hidden="true"></i></a>
																</c:if>
															</div>
														</div>
													</td> --%>
												</tr>
											</c:forEach>
											</tbody>
									</table>
									
								</div>
							</div>
							<div class="box-footer">
								<a href="${ctx}/cpmermst/venuePreserve" id="cancleSubmit" class="form-a">&lt;返回</a>
								<!-- <button type="submit" class="form-a">&lt;返回</button> -->
								<!-- <a href="JavaScript:history.Go(-1)" class="form-a">&lt;返回</a> -->
								<!--<button class="btn venueBtn btn-size fr">查询</button>-->
									<tags:pagination url="${ctx}/merchant/list" page="${pageInfo}" cssClass="pull-right"/>
									<!--  
									<a type="button" class="btn btn-default" id="cancleSubmit"><i class="glyphicon glyphicon-chevron-left" ></i> 返回</a>
									-->
							</div>
						</form>
					</div>
				</div>
			</div>
		</div><!-- /.content -->
			</div><!-- /.content-wrapper -->
	      
			<!-- Main footer -->
			<tags:main_footer/>
			
			<!-- Control Sidebar -->
			<tags:control_sidebar/>
      
		</div><!-- ./wrapper -->

		<tags:load_common_js/>
		<script type="text/javascript">
			/* $("#cancleSubmit").click(function(){
				location.href="${ctx}/staff/venuePreserve";
			}); */
			$("#cancleSubmit").click(function(){
				location.href="${ctx}/staff/venuePreserve"
				
			});
			
			
		</script>
	</body>
</html>
