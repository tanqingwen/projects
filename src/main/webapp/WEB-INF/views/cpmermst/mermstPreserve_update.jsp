<%@ page language="java" pageEncoding="UTF-8"
	trimDirectiveWhitespaces="true" isErrorPage="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="app" uri="http://www.hp.com/jsp/functions"%>
<%@ taglib prefix="tags" tagdir="/WEB-INF/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8" />
<title>综合管理系统| 商户维护更新</title>
<tags:head_common_content />
<link rel="stylesheet"
	href="${assets}/gatesManagement/css/datepicker.min.css" />
<link rel="stylesheet" href="${assets}/validator/css/validator.css" />
<link rel="stylesheet" href="${assets}/validator/css/css.css" />
<link rel="stylesheet" href="${assets}/layer/skin/layer.css" />
<link rel="stylesheet"
	href="${assets}/gatesManagement/css/gatesManagement.css" />
<style>
.form-group .col-md-6:last-of-type label {
	width: 13em;
}

.form-group .col-md-6:first-of-type label {
	width: 8em;
}

.col-lg-6 {
	padding: 0 15px;
}

.input-group .input-group-addon {
	float: left;
	vertical-align: middle;
	line-height: 30px;
}

.form-group .input-group {
	display: inline-block;
	vertical-align: middle;
}

label {
	float: left;
	height: 40px;
	line-height: 40px;
}
</style>
</head>
<body class="hold-transition skin-blue-light sidebar-mini">


	<div class="wrapper">

		<!-- Main header -->
		<tags:main_header />

		<!-- Left side column. contains the logo and sidebar -->
		<tags:main_sidebar active="cpmermst" />

		<!-- Content Wrapper. Contains page content -->
		<div class="content-wrapper">
			<div class="context-tips">
				<tags:action_tip />
			</div>
			<!-- Content Header (Page header) -->
			<section class="content-header">
				<h1>商户维护更新</h1>
				<ol class="breadcrumb">
					<li><a href="${ctx}/"><i class="fa fa-dashboard"></i> 主页</a></li>
					<li><a href="${ctx }/startTreeviewDetail/xcgl">现场管理</a></li>
					<li><a href="${ctx}/cpmeracc/merchantDataEntering">商户录入</a></li>
					<li class="active">商户维护更新</li>
				</ol>
			</section>
			<div class="row outer-wrap merchantUpdate">
				<div class="tip-img">
					<p>商户维护更新</p>
				</div>
				<div class="content">
					<div class="main">
						<form:form id="thisForm" class="form-horizontal"
							action="${ctx}/cpmermst/submitForMerchantPreserver_update"
							modelAttribute="cpMermst" method="post">
							<h3 style="border-bottom: 2px dashed #45a0e0;">商户信息</h3>
							<div class="col-md-12">
								<div class="col-md-6">
									<div class="form-group">
										<label>公司名称<i class="color-red">*</i>：
										</label>
										<form:input class="form-control formConl" id="mmBizName"
											path="mmBizName" />
										<form:input class="form-control formConl" id="mmPhyState" type="hidden" 
											path="mmPhyState" />
									</div>
								</div>
								<div class="col-md-6">
									<div class="form-group">
										<label>法人姓名<i class="color-red">*</i>：
										</label>
										<form:input class="form-control formConl" path="mmPrincipal"
											id="mmPrincipal" />
									</div>
								</div>
							</div>
							<div class="col-md-12">
								<div class="col-md-6">
									<div class="form-group">
										<label>品牌名称<i class="color-red">*</i>：
										</label>
										<form:input class="form-control formConl" id="mmStmtName"
											path="mmStmtName" />
									</div>
								</div>
								<div class="col-md-6">
									<div class="form-group">
										<label>法人身份证号<i class="color-red">*</i>：
										</label>
										<form:input class="form-control formConl"
											path="mmPrincipalIdNo" id="mmPrincipalIdNo" />
									</div>
								</div>
							</div>
							<div class="col-md-12">
								<div class="col-md-6">
									<div class="form-group">
										<label>英文品牌：</label>
										<form:input class="form-control formConl" path="mmSmellName"
											id="mmSmellName" />
									</div>
								</div>
								<div class="col-md-6">
									<div class="form-group">
										<label>法人户籍地址<i class="color-red">*</i>：
										</label>
										<form:input class="form-control formConl"
											path="mmPrincipalAddress" id="mmPrincipalAddress" />
									</div>
								</div>
							</div>
							<div class="col-md-12">
								<div class="col-md-6">
									<div class="form-group">
										<label>营业执照有效期起始时间<i class="color-red">*</i>：
										</label>
										<div class="input-group">
											<span class="input-group-addon"><i
												class="glyphicon glyphicon-calendar"></i></span>
											<form:input class="form-control formConl"
												path="mmLicenseExpireBeginDate"
												id="mmLicenseExpireBeginDate" data-toggle="datepicker"
												style="width:170px;" />
										</div>
									</div>
								</div>
								<div class="col-md-6 ">
									<div class="form-group">
										<label>营业执照有效期终止时间<i class="color-red">*</i>：
										</label>
										<div class="input-group ">
											<span class="input-group-addon"><i
												class="glyphicon glyphicon-calendar"></i></span>
											<form:input class="form-control formConl"
												path="mmLicenseExpireEndDate" id="mmLicenseExpireEndDate"
												data-toggle="datepicker" style="width:170px;" />
										</div>
									</div>
								</div>
							</div>
							<div class="col-md-12">
								<div class="col-md-6">
									<div class="form-group">
										<label>营业执照号<i class="color-red">*</i>：
										</label>
										<form:input class="form-control formConl"
											path="mmBussinessLicense" id="mmBussinessLicense" />
									</div>
								</div>
								<div class="col-md-6">
									<div class="form-group">
										<label>联系人<i class="color-red">*</i>：
										</label>
										<form:input class="form-control formConl" path="mmContactName"
											id="mmContactName" />
									</div>
								</div>
							</div>
							<div class="col-md-12">
								<div class="col-md-6">
									<div class="form-group">
										<label>店长电话<i class="color-red">*</i>：
										</label>
										<form:input class="form-control formConl" path="mmMobTelno"
											id="mmMobTelno" />
									</div>
								</div>
							</div>
							<h3 style="border-bottom: 2px dashed #6fba2c;" class="clearfix">园区信息</h3>
							<div class="col-md-12">
								<div class="col-md-6">
									<div class="form-group">
										<label>商户号码：</label>
										<form:input class="form-control formConl" id="mmMerchantNo"
											readonly="true" path="mmMerchantNo" />
									</div>
								</div>
								<div class="col-md-6">
									<div class="form-group">
										<label>商户地址<i class="color-red">*</i>：
										</label>
										<form:input class="form-control formConl" id="mmPhyLine1"
											path="mmPhyLine1" size="15" />
									</div>
								</div>
							</div>
							<div class="col-md-12 contract">
								<div class="col-md-6">
									<div class="form-group">
										<label>合约开始时间：</label>
										<div class="input-group ">
											<span class="input-group-addon"><i
												class="glyphicon glyphicon-calendar"></i></span>
											<form:input type="text" path="mmAgreementStartDate"
												id="mmAgreementStartDate" class="form-control"
												data-toggle="datepicker" style="width:170px;" />
										</div>
									</div>
								</div>
								<div class="col-md-6">
									<div class="form-group">
										<label>合约到期时间：</label>
										<div class="input-group ">
											<span class="input-group-addon"><i
												class="glyphicon glyphicon-calendar"></i></span>
											<form:input id="mmAgreementEndDate" path="mmAgreementEndDate"
												class="form-control" data-toggle="datepicker"
												style="width:170px;" />
										</div>
									</div>
								</div>
							</div>
							<div class="col-md-12">
								<div class="col-md-6">
									<div class="form-group">
										<label>归属场馆等级<i class="color-red">*</i>：
										</label>
										<form:select path="mmPmtMode" id="mmPmtMode"
											style="width:220px;">
											<form:option value="0">请选择级别...</form:option>
											<%-- <form:option value="1">一级-欢乐大世界</form:option> --%>
											<form:option value="2">二级-场馆</form:option>
											<form:option value="3">三级-子场馆</form:option>
										</form:select>

									</div>
								</div>
								<div class="col-md-6">
									<div class="form-group">
										<label>归属场馆名称<i class="color-red">*</i>：
										</label>
										<form:select id="mmChainAccno" path="mmChainAccno"
											style="width:220px;">
											<form:option value="0">一级-场馆</form:option>
										</form:select>
									</div>
								</div>
							</div>
							<h3 style="border-bottom: 2px dashed #f7ab00;" class="clearfix">支付信息</h3>
							<div class="col-md-12">
								<div class="col-md-6">
									<div class="form-group">
										<label>收款单位<i class="color-red">*</i>：
										</label>
										<form:select path="mmServicingCentre" id="mmServicingCentre"
											class="form-control" style="width:220px;">
											<c:forEach var="item" items="${cpBrchIdList}">
												<form:option value="${item.brBranchId }">${item.brBranchName }</form:option>
											</c:forEach>
										</form:select>
									</div>
								</div>
								<div class="col-md-6">
									<div class="form-group">
										<label>账户名称<i class="color-red">*</i>：
										</label>
										<form:input class="form-control formConl" type="text"
											path="mmRegName" id="mmRegName" />
									</div>
								</div>
							</div>
							<div class="col-md-12">
								<div class="col-md-6">
									<div class="form-group">
										<label>付款类型<i class="color-red">*</i>：
										</label>
										<form:select path="mmPmtFtyp" id="mmPmtFtyp"
											style="width:220px;">
											<form:option value="D">D-每日</form:option>
											<form:option value="W">W-每周</form:option>
											<form:option value="M">M-每月</form:option>
										</form:select>
									</div>
								</div>
								<div class="col-md-6">
									<div class="form-group">
										<label>收款账户所属地区<i class="color-red">*</i>：
										</label>
										<form:input class="form-control formConl" type="text"
											path="mmPayBankCode" id="mmPayBankCode" />
									</div>
								</div>
							</div>
							<div class="col-md-12">
								<div class="col-md-6">
									<div class="form-group">
										<label>公司银行账号<i class="color-red">*</i>：
										</label>
										<form:input class="form-control formConl" id="mmBankAccno"
											path="mmBankAccno" />
									</div>
								</div>
								<div class="col-md-6">
									<div class="form-group">
										<label>收款账户开户网点<i class="color-red">*</i>：
										</label>
										<form:input class="form-control formConl" type="text"
											path="mmPayBranch" id="mmPayBranch" />
									</div>
								</div>
							</div>
							<div class="col-md-12">
								<div class="col-md-6">
									<div class="form-group">
										<label>公司收款银行<i class="color-red">*</i>：
										</label>
										<form:input class="form-control formConl" path="mmBankName"
											id="mmBankName" />
									</div>
								</div>
								<div class="col-md-6">
									<div class="form-group">
										<label>商户性质<i class="color-red">*</i>：
										</label>
										<%--   <form:input class="form-control formConl" path="mmBankName" id="mmBankName"/> --%>
										<form:select id="mmRegCapital" path="mmRegCapital" class="form-control formConl" style="width:220px;">
		                         		<form:option value="">请选择商户性质</form:option>
			                          	<form:option value="1">自营</form:option>
			                          	<form:option value="2">租赁</form:option>
		                          		</form:select>
									</div>
								</div>
							</div>
							<div class="submit-group col-md-12 marginBottom">
								<a href="${ctx}/cpmermst/searchMermstResultList" class="form-a">&lt;返回</a>
								<button type="submit" class="btn-size"
									style="width: 110px; margin: 0 25px 0 15px;" id="memberShip">更新</button>
							</div>
						</form:form>

					</div>
				</div>
			</div>
		</div>
	</div>
	<tags:main_footer />

	<!-- Control Sidebar -->
	<tags:control_sidebar />
	<!-- ./wrapper -->
	<tags:load_common_js />
	<script src="${assets}/underscore/underscore.min.js"></script>
	<script src="${assets}/gatesManagement/js/datepicker.min.js"></script>
	<script src="${assets}/validator/js/validator.js"></script>
	<script src="${assets}/layer/layer.js"></script>
	<script language="javascript">
	 $(function() {
	        var dataPickerOp = {
	            format: 'yyyy-mm-dd',
	            weekStart: 1,
/* 	            startDate:new Date(), */
	            days: ['星期日', '星期一', '星期二', '星期三', '星期四', '星期五', '星期六'],
	            daysShort: ['周日', '周一', '周二', '周三', '周四', '周五', '周六'],
	            daysMin: ['日', '一', '二', '三', '四', '五', '六'],
	            months: ['一月', '二月', '三月', '四月', '五月', '六月', '七月', '八月', '九月', '十月', '十一月', '十二月'],
	            monthsShort: ['1月', '2月', '3月', '4月', '5月', '6月', '7月', '8月', '9月', '10月', '11月', '12月'],
	            autoHide: true
	        };
	        var dataPickerOp2 = {
		            format: 'yyyy-mm-dd',
		            weekStart: 1,
		            days: ['星期日', '星期一', '星期二', '星期三', '星期四', '星期五', '星期六'],
		            daysShort: ['周日', '周一', '周二', '周三', '周四', '周五', '周六'],
		            daysMin: ['日', '一', '二', '三', '四', '五', '六'],
		            months: ['一月', '二月', '三月', '四月', '五月', '六月', '七月', '八月', '九月', '十月', '十一月', '十二月'],
		            monthsShort: ['1月', '2月', '3月', '4月', '5月', '6月', '7月', '8月', '9月', '10月', '11月', '12月'],
		            autoHide: true,
		           
		        };
	        //营业执照时间
	       $('#mmLicenseExpireBeginDate').datepicker(dataPickerOp);
	        $('#mmLicenseExpireEndDate').datepicker(dataPickerOp2);
	        $('#mmLicenseExpireBeginDate').change(function(){
	        	$('#thisForm').data('bootstrapValidator')  //时间提示错误后重新输入提示正确，修复时间bug
                .updateStatus('mmLicenseExpireBeginDate', 'NOT_VALIDATED',null)  
                .validateField('mmLicenseExpireBeginDate'); 
	        	$('#mmLicenseExpireEndDate').datepicker('setStartDate', $(this).val());
	        })
	        $('#mmLicenseExpireEndDate').change(function(){
	        	$('#thisForm').data('bootstrapValidator')  
                .updateStatus('mmLicenseExpireEndDate', 'NOT_VALIDATED',null)  
                .validateField('mmLicenseExpireEndDate'); 
	        	$('#mmLicenseExpireBeginDate').datepicker('setEndDate', $(this).val());
	        })
	        
	        //合同时间限制
	        $('#mmAgreementStartDate').datepicker(dataPickerOp);
	        $('#mmAgreementEndDate').datepicker(dataPickerOp2);
	        $('#mmAgreementStartDate').change(function(){
	        	$('#thisForm').data('bootstrapValidator')  
                .updateStatus('mmAgreementStartDate', 'NOT_VALIDATED',null)  
                .validateField('mmAgreementStartDate'); 
	        	$('#mmAgreementEndDate').datepicker('setStartDate', $(this).val());
	        })
	        $('#mmAgreementEndDate').change(function(){
	        	$('#thisForm').data('bootstrapValidator')  
                .updateStatus('mmAgreementEndDate', 'NOT_VALIDATED',null)  
                .validateField('mmAgreementEndDate'); 
	        	$('#mmAgreementEndDate').datepicker('setEndDate', $(this).val());
	        })
	    });
	</script>
	<script type="text/javascript">		
		validatorFields();  
		function validatorFields(){
			$('#thisForm').bootstrapValidator({
	    		message: 'This value is not valid',   
	   			feedbackIcons: {
	 				valid: 'glyphicon glyphicon-ok',         
	 				invalid: 'glyphicon glyphicon-remove',         
	 				validating: 'glyphicon glyphicon-refresh'    
	 			},
	 			fields: {
	 				mmBizName: {
						validators: {
							notEmpty: {
								message: '商户名称不能为空！'                  
							},
							
						}
	 				},
	 				mmStmtName: {
						validators: {
							notEmpty: {
								message: '商户简称不能为空！'                  
							},
							
						}
	 				},
	 				mmContactName: {
						validators: {
							notEmpty: {
								message: '联系人名称不能为空！'                  
							},
							
						}
	 				},
	 				mmSmellName: {
						validators: {
							 regexp: {
								 regexp: /^[A-Za-z]+$/,
								 message: '英文品牌格式不正确'
							}
							
						}
	 				},
	 				mmPhyLine1: {
						validators: {
							notEmpty: {
								message: '商户地址不能为空！'                  
							},
							
						}
	 				}, 
	 				mmPhyTelno: {
						validators: {
							notEmpty: {
								message: '商户电话不能为空！'                  
							},
							
						}
	 				}, 
	 				
	 				mmAgreementStartDate: {
						validators: {
							notEmpty: {
								message: '合约开始时间不能为空!'                  
							},
						}
	 				}, 
	 				mmEmailAddress: {
						validators: {
							notEmpty: {
								message: '商户电邮不能为空!'                  
							},
						}
	 				}, 
	 				mmAgreementEndDate: {
						validators: {
							notEmpty: {
								message: '合约到期时间不能为空！'                  
							},
						}
	 				},
	 				mmServicingCentre: {
						validators: {
							notEmpty: {
								message: '收单单位不能为空！'                  
							}
						}
	 				},
	 				mmBussinessLicense: {
						validators: {
							notEmpty: {
								message: '营业执照号码不能为空！'                  
							},
							 regexp: {
								 regexp: /\d{15}/,
								 message: '营业执照号码格式不正确'
							}
						}
	 				},
	 				mmPmtFtyp: {
						validators: {
							notEmpty: {
								message: '付款类型不能为空！'                  
							},
						}
	 				},
	 				mmLicenseExpireBeginDate: {
						validators: {
							notEmpty: {
								message: '营业执照有效期起始时间不能为空！'                  
							},
						}
	 				},
	 				mmPmtName: {
						validators: {
							notEmpty: {
								message: '商户持卡人姓名不能为空！'                  
							},
						}
	 				},
	 				mmLicenseExpireEndDate: {
						validators: {
							notEmpty: {
								message: '营业执照有效期终止时间不能为空！'                  
							},
						}
	 				},
	 				mmBankAccno: {
						validators: {
							notEmpty: {
								message: '商户银行账号不能为空！'                  
							},
						}
	 				},
	 				mmPrincipal: {
						validators: {
							notEmpty: {
								message: '法人姓名不能为空！'                  
							},
						}
	 				},
	 				mmBankName: {
						validators: {
							notEmpty: {
								message: '商户收款银行不能为空！'                  
							},
						}
	 				},
	 				mmPrincipalIdNo: {
						validators: {
							notEmpty: {
								message: '法人身份证号码不能为空！'                  
							},
						}
	 				},
	 				mmPrincipalAddress: {
						validators: {
							notEmpty: {
								message: '法人户籍地址不能为空！'                  
							},
						}
	 				},
	 				mmRegName: {
						validators: {
							notEmpty: {
								message: '账户名称不能为空！'                  
							},
						}
	 				},
	 				mmPayBranch: {
						validators: {
							notEmpty: {
								message: '收款帐号开户网点不能为空！'                  
							},
						}
	 				},
	 				mmPayBankCode: {
						validators: {
							notEmpty: {
								message: '收款账户所属地区不能为空！'                  
							},
						}
	 				},
	 				mmMobTelno: {
						validators: {
							notEmpty: {
								message: '店长电话不能为空！'                  
							},
						}
	 				},
	 			}
	    	});
		}
		$('#mmRegCapital').change(function(){
			var val1=$('#mmRegCapital').val();
			console.log(val1);
			if(val1==2){
				$('.contract').css('display','block');
			}
			if(val1==1||val1==0){
				$('.contract').css('display','none');
			}
			
		})
		
		$(document).ready(function(){
			_.templateSettings = {
					interpolate: /\<\@\=(.+?)\@\>/gim,
				    evaluate: /\<\@(.+?)\@\>/gim,
				    escape: /\<\@\-(.+?)\@\>/gim
			};
			
		/*	$('.firstCommission').datepicker({
	   			format: 'yyyymmdd',
				autoclose: true
	   		});*/
			
			var val1=$('#mmRegCapital').val();
			if(val1==2){
				$('.contract').css('display','block');
			}
			if(val1==1||val1==0){
				$('.contract').css('display','none');
			}
	   		
			var mmPmtMode = $("#mmPmtMode").val();
	 		$.ajax({
	 			async: false,
				type : "POST",
				url : "${ctx}/cpmermst/search_mermst_Data1",
				dataType : "json",
				data : {
					mmPmtMode : mmPmtMode
				},
				success : function(data) {
					if (data.status == "OK") {
						mmChainAccno = data.value;
						$("#mmChainAccno").html(_.template($("#tplMmChainAccno").html(), mmChainAccno));
					}else{
						alert("归属场馆错误");
					}
				}
			});
	 		
	 		//上级场馆编号
	 		var mmOldAccNumber= "${mmChainAccno}";
	 		for(var i=0;i<document.getElementById("mmChainAccno").options.length;i++){
	 			var trimab1 = document.getElementById("mmChainAccno").options[i].value;
	 			if(trimab1==mmOldAccNumber){
	 				document.getElementById("mmChainAccno").options[i].selected='selected';
	 				break;
	 			}
	 		}
	 		
	 		//合约开始时间
		    $("#mmAgreementStartDate").datepicker({  
		        todayBtn : "linked",  
		        autoclose : true,  
		        todayHighlight : true,  
		    }).on('hide',function(e) {  
		                $('#thisForm'
		                		).data('bootstrapValidator')  
		                    .updateStatus('mmAgreementStartDate', 'NOT_VALIDATED',null)  
		                    .validateField('mmAgreementStartDate');
		    });
		    
	 		//合约结束时间
		    $("#mmAgreementEndDate").datepicker({  
		        todayBtn : "linked",  
		        autoclose : true,  
		        todayHighlight : true,  
		    }).on('hide',function(e) {  
		                $('#thisForm').data('bootstrapValidator')  
		                    .updateStatus('mmAgreementEndDate', 'NOT_VALIDATED',null)  
		                    .validateField('mmAgreementEndDate');  
		    }); 
			

	 		$("#mmAgreementStartDate").change(function(){
				/* if($("#mmAgreementStartDate").val() != ""){
					var arr = new Array();
					arr = $("#mmAgreementStartDate").val().split("/");
					var newDate = arr[2]+arr[0]+arr[1];
					$("#mmAgreementStartDate").val(newDate);
				} */
			});
			
			
			$("#mmAgreementEndDate").change(function(){
				/* if($("#mmAgreementEndDate").val() != ""){
					var arr = new Array();
					arr = $("#mmAgreementEndDate").val().split("/");
					var newDate = arr[2]+arr[0]+arr[1];
					$("#mmAgreementEndDate").val(newDate);
				} */
			});
			
				
			//添加校验处理
			$("#memberShip").click(function(){
				//归属场馆
				var mmChainAccno = $("#mmChainAccno").val();
				if(mmChainAccno==""){
					alert("归属场馆不存在,请添加归属场馆!");
					return false;
				}
				
				var mmAgreementStartDate = $("#mmAgreementStartDate").val();
				var mmAgreementEndDate = $("#mmAgreementEndDate").val();
				if(mmAgreementStartDate != "" && mmAgreementEndDate != ""){
					if(Number(mmAgreementStartDate)>Number(mmAgreementEndDate)){
						alert("合约开始时间不可以大于合约结束时间！");
						return false;
					}
				}
				
				//商户电邮
				
				/*var mmEmailAddress=$("#mmEmailAddress").val();
				var fal = email(mmEmailAddress);
				if(fal==false){
					alert("商户电邮有误，请重新输入!");
					return false;
				}*/
				
				//法人身份证号码
				/* var mmPrincipalIdNo=$("#mmPrincipalIdNo").val();
				var flag = idno(mmPrincipalIdNo);
				if(flag==false){
					alert("法人身份证号码有误，请重新输入！");
					return false;
				} */
			});
			
			validateInput();
		});
		
		
		//英文名称
		function validateInput(){
			$("#mmSmellName").keyup(function(){
				if($("#mmSmellName").val().length > 3){
				}
			});
		}
		
		
		 //选择场馆等级 - 跳动归属场馆
	  $("#mmPmtMode").change(function(){
			 var mmPmtMode = $("#mmPmtMode").val();
	 		 $.ajax({
				type : "POST",
				url : "${ctx}/cpmermst/search_mermst_Data1",
				dataType : "json",
				data : {
					mmPmtMode : mmPmtMode
				},
				success : function(data) {
					if (data.status == "OK") {
						mmChainAccno = data.value;
						$("#mmChainAccno").html(_.template($("#tplMmChainAccno").html(), mmChainAccno));
					}else{
						alert("归属场馆错误");
					}
				}
			});
		 });
		 </script>


	<script type="text/template" id="tplMmChainAccno">
	 		<@ _.each(mmChainAccno, function (evt) { @>
					<option value="<@= evt.mmMerchantNo @>"><@= evt.mmBizName@></option>
			<@ }); @>
		</script>
</body>
</html>