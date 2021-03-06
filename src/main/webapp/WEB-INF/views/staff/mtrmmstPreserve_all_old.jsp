<%@ page language="java" pageEncoding="UTF-8" trimDirectiveWhitespaces="true" isErrorPage="true" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="app" uri="http://www.hp.com/jsp/functions" %>
<%@ taglib prefix="tags" tagdir="/WEB-INF/tags" %>
<!DOCTYPE html>
<html>
	<head>
		<title>综合管理系统  | 终端列表</title>
		<tags:head_common_content/>
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
						<li><a href="${ctx }/startTreeviewDetail/xcgl">现场管理</a></li>
						<li><a href="${ctx}/staff/merchantDataEntering">商户查询</a></li>
						<li class="active">终端列表</li>
					</ol>
				</section>

				<!-- Main content -->
				<section class="content">
					<div class="box box-primary">
		                <div class="box-header with-border">
		                  <h3 class="box-title"><i class="fa fa-search"></i> 查询表单</h3>
		                </div><!-- /.box-header -->
		                <!-- form start -->
		                <form id="form1" name="form1" class="form-horizontal" action="${ctx}/staff/merchantPreserve" method="post">
		                  <div class="box-body">
		                  	<div class="col-sm-6">
			                    <div class="form-group">
			                      <label for="merchantID" class="col-sm-3 control-label">商户号码</label>
			                      <input type="hidden" id="merchantNo" name="merchantNo" value="${mmMerchantNo }">
			                      <div class="col-sm-9">
			                      	${mmMerchantNo }
			                      </div>
			                    </div>
		                    </div>
		                    
		                    <div class="col-sm-6">
			                    <div class="form-group">
			                      <label for="merchantTName" class="col-sm-3 control-label">商户名称</label>
			                      <div class="col-sm-9">
			                      	${mmBizName }
			                      </div>
			                    </div>
		                    </div>
		                    
		                  </div><!-- /.box-body -->
		                    
		                  <div class="box-footer">
		                  	<div class="pull-right">
		                    	<button type="submit" class="btn btn-info "><i class="glyphicon glyphicon-chevron-left"></i> 返回</button>
		                    </div>
		                  </div><!-- /.box-footer -->
		                  
		                </form>
		                
			        </div><!-- /.box -->
				
					<div class="row">
						<div class="col-md-12">
							<div class="box box-info">
								<div class="box-header with-border">
									<h3 class="box-title"><i class="fa fa-list"></i> 查询列表</h3>
									<div class="box-tools pull-right">
								        <button class="btn btn-box-tool" data-widget="collapse"><i class="fa fa-minus"></i></button>
								    </div>
								</div><!-- /.box-header -->
				                <div id="trmmstId" class="box-body">
					                <div class="table-responsive">
						                <table class="table table-striped">
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
				                </div><!-- /.box-body -->
					
								<div class="box-footer">
									<tags:pagination url="${ctx}/merchant/list" page="${pageInfo}" cssClass="pull-right"/>
									<!--  
										<a type="button" class="btn btn-default" id="cancleSubmit"><i class="glyphicon glyphicon-chevron-left" ></i> 返回</a>
									-->
								</div>
							</div><!-- /.box -->
						</div><!-- /.col -->
					</div><!-- /.row -->
				</section><!-- /.content -->
			</div><!-- /.content-wrapper -->
	      
			<!-- Main footer -->
			<tags:main_footer/>
			
			<!-- Control Sidebar -->
			<tags:control_sidebar/>
      
		</div><!-- ./wrapper -->

		<tags:load_common_js/>
		<script type="text/javascript">
			//$("#cancleSubmit").click(function(){
				//根据商户号查询商户记录
				//location.href="${ctx}/staff/merchantPreserve";
			//	location.href="${ctx}/staff/venuePreserve_list";
			// });
			
		</script>
	</body>
</html>
