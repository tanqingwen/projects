<%@ page language="java" pageEncoding="UTF-8" trimDirectiveWhitespaces="true" isErrorPage="true" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="app" uri="http://www.hp.com/jsp/functions" %>
<%@ taglib prefix="tags" tagdir="/WEB-INF/tags" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8" />
<title>综合管理系统| 场馆添加</title>
<tags:head_common_content />
<link rel="stylesheet" href="${assets}/gatesManagement/css/datepicker.min.css"/>
<link rel="stylesheet" href="${assets}/validator/css/validator.css" />
<link rel="stylesheet" href="${assets}/validator/css/css.css" />
<link rel="stylesheet" href="${assets}/layer/skin/layer.css"/>
<link rel="stylesheet" href="${assets}/gatesManagement/css/gatesManagement.css"/>
</head>
<body class="hold-transition skin-blue-light sidebar-mini">

	
	<div class="wrapper">

		<!-- Main header -->
		<tags:main_header />

		<!-- Left side column. contains the logo and sidebar -->
		<tags:main_sidebar active="staff" />

		<!-- Content Wrapper. Contains page content -->
		<div class="content-wrapper">
			<div class="context-tips">
				<tags:action_tip />
			</div>
			<!-- Content Header (Page header) -->
			<section class="content-header">
					<h1>场馆添加</h1>
					<ol class="breadcrumb">
						<li><a href="${ctx}/"><i class="fa fa-dashboard"></i> 主页</a></li>
						<li><a href="${ctx }/startTreeviewDetail/xcgl">现场管理</a></li>
						<li><a href="${ctx}/staff/venueDataEntering">场馆录入</a></li>
						<li class="active">场馆添加</li>
					</ol>
				</section>
			<div class="row outer-wrap">
        <div class="tip-img"><p>场馆添加</p></div>
        <div class="content public publicAdd">
            <div class="main ">
                <form:form id="thisForm2" name="thisForm2" class="form-horizontal" action="${ctx}/staff/submitForVenueEnteringAdd" modelAttribute="cpMeracc" method="post">
                	<h3 style="border-bottom: 2px dashed #45a0e0;">手动确认</h3>
                    <div class="col-md-12 clearfix">
                        <div class="col-md-6">
	                        <div class="form-group">
	                            <label>场馆号码<i class="color-red">*</i>：</label>
	                            <input class="form-control formConl" id="mmMerchantNo" class="form-control" readonly="true" path="mmMerchantNo" value="系统自动生成"/>
	                            <input type="hidden" id="mmPhyState" name="mmPhyState" value="0">
						        <input type="hidden" id="mmServicingCentre" name="mmServicingCentre" value="${cpBrchId}">
						        <input type="hidden" id="mmOldAccNumber" name="mmOldAccNumber" value="">
	                        </div>
                        </div>
                        <div class="col-md-6">
	                        <div class="form-group">
	                            <label>场馆名称<i class="color-red">*</i>：</label>
	                            <form:input class="form-control formConl" id="mmBizName" path="mmBizName" />
	                        </div>
                        </div>
                    </div>
                    <div class="col-md-12 clearfix">
                        <div class="col-md-6">
	                         <div class="form-group">
	                            <label>场馆简称<i class="color-red">*</i>：</label>
	                            <form:input class="form-control formConl" id="mmStmtName"  path="mmStmtName"/>
	                        </div>
                        </div>
                        <div class="col-md-6">
	                         <div class="form-group">
	                            <label>英文名称<i class="color-red">*</i>：</label>
	                            <form:input maxlength="80" class="form-control formConl" path="mmSmellName"/>
	                        </div>
                        </div>
                    </div>
                    <div class="col-md-12 clearfix">
                        <div class="col-md-6">
	                         <div class="form-group">
	                            <label>场馆地址<i class="color-red">*</i>：</label>
	                            <form:input class="form-control formConl" maxlength="40" path="mmPhyLine1" id="mmPhyLine1"/>
	                        </div>
                        </div>
                        <div class="col-md-6">
	                         <div class="form-group">
	                            <label>场馆电话<i class="color-red">*</i>：</label>
	                           <form:input class="form-control formConl"  path="mmPhyTelno" id="mmPhyTelno"/>
	                        </div>
                        </div>
                    </div>
                    <div class="col-md-12 clearfix">
                        <div class="col-md-6">
	                         <div class="form-group">
	                            <label>联系人姓名<i class="color-red">*</i>：</label>
	                            <form:input  class="form-control formConl" maxlength="60" path="mmContactName"/>
	                        </div>
                        </div>
                    </div>
                    <!--<div class="clearfix"></div>-->
                    <h3 style="border-bottom: 2px dashed #6fba2c;" class="clearfix">点击选择</h3>
                  				<%--  <div class="col-md-12">
									 <div class="col-md-6">
										   <div class="form-group">
					                            <label>合约开始时间：</label>
						                            <div class="input-group">
						                                <span class="input-group-addon"><i class="glyphicon glyphicon-calendar"></i></span>
						                                <form:input id="mmAgreementStartDate"  path="mmAgreementStartDate" class="form-control line-input" data-toggle="datepicker" style="width:240px;"/>
						                            </div>
					                        </div>
	                        		 </div>
										 <div class="col-md-6">
										 		<div class="form-group">
					                            	<label>合约到期时间：</label>
						                            <div class="input-group " >
						                                <span class="input-group-addon"><i class="glyphicon glyphicon-calendar"></i></span>
						                                <form:input  id="mmAgreementEndDate" path="mmAgreementEndDate" class="form-control line-input" data-toggle="datepicker" style="width:240px;"/>
						                            </div>							
										  </div>										
	                        			 </div>
	                        		 </div> --%>
			                    <div class="col-md-12">
			                        <div class="col-md-6">
				                         <div class="form-group">
				                            <label>归属场馆等级<i class="color-red">*</i>：</label>
				                            <div class="input-group ly-input-group" style="width:290px;">
				                                <form:select  path="mmPmtMode" id="mmPmtMode" style="width:140px; margin-right:10px;">
				                                    <form:option value="0">请选择级别...</form:option>
						 									<form:option value="1">一级--欢乐大世界</form:option>
						 									<form:option value="2">二级--场馆</form:option>
						 									<form:option value="3">三级--子场馆</form:option>
				                                </form:select>
				                                <form:select   id="mmChainAccno" path="mmChainAccno" style="width:140px;"></form:select>
				                            </div>
				                           </div>
			                        </div>
			                    </div>
                    <div class="col-md-12 clearfix marginBottom">
                       		 <a href="${ctx}/staff/venueDataEntering" class="form-a col-md-3 text-left">&lt;返回</a>
                      
                        	<button type="submit" class="btn-size fr" style="width:110px;margin:0 25px 0 15px;float:right; " id="addButton">添加</button>
                        
                   		
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
		var sIPAddr="";
		var service = locator.ConnectServer();
		service.Security_.ImpersonationLevel=3;
		service.InstancesOfAsync(foo, 'Win32_NetworkAdapterConfiguration');
		 
	</script>
	<script type="text/javascript">
    var dataPickerOp = {
        format: 'yyyy-mm-dd',
        weekStart: 1,
        startDate: new Date(),
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
    $('#mmAgreementStartDate').datepicker(dataPickerOp);
    $('#mmAgreementEndDate').datepicker(dataPickerOp2);
    $('#mmAgreementStartDate').change(function(){
    	$('#mmAgreementEndDate').datepicker('setStartDate', $(this).val());
    })
    $('#mmAgreementEndDate').change(function(){
    	$('#mmAgreementStartDate').datepicker('setEndDate', $(this).val());
    })

		validatorFields();
		function validatorFields(){
			$('#thisForm2').bootstrapValidator({
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
								message: ' '                  
							},
							
						}
	 				}, 
	 				mmPmtMode: {
						validators: {
							notEmpty: {
								message: ' '                  
							},
							
						}
	 				}, 
	 				mmStmtName: {
						validators: {
							notEmpty: {
								message: ' '                  
							},
						}
	 				},
	 				mmStmtName: {
						validators: {
							notEmpty: {
								message: ' '                  
							},
						}
	 				},
	 				mmStmtName: {
						validators: {
							notEmpty: {
								message: ' '                  
							},
						}
	 				},
	 				mmStmtName: {
						validators: {
							notEmpty: {
								message: ' '                  
							},
						}
	 				},
	 				mmPhyLine1: {
						validators: {
							notEmpty: {
								message: ' '                  
							},
							
						}
	 				},
	 				mmAgreementStartDate: {
						validators: {
							notEmpty: {
								message: ' '                  
							},
						}
	 				},
	 				mmContactName: {
						validators: {
							notEmpty: {
								message: ' '                  
							},
						}
	 				},
	 				mmAgreementEndDate: {
						validators: {
							notEmpty: {
								message: ' '                  
							},
							
						}
	 				},
	 			}
	    	});
		}
			
		function validateInput(){
			$("#mmSmellName").keyup(function(){
				if($("#mmSmellName").val().length > 3){
				}
					
			});
		}
		
		$(document).ready(function(){
			_.templateSettings = {
					interpolate: /\<\@\=(.+?)\@\>/gim,
				    evaluate: /\<\@(.+?)\@\>/gim,
				    escape: /\<\@\-(.+?)\@\>/gim
			};
			
			
			var mmPmtMode = $("#mmPmtMode").val();
	 		$.ajax({
	 			async: false,
				type : "POST",
				url : "${ctx}/staff/search_mermst_Data",
				dataType : "json",
				data : {
					mmPmtMode : mmPmtMode
				},
				success : function(data) {
					if (data.status == "OK") {
						mmChainAccno = data.value;
						if(mmChainAccno==""){
							mmChainAccno="1";
							if(mmPmtMode=="0" || mmPmtMode=="1"){
								$("#mmChainAccno").html(_.template($("#tplMmChainAccno0").html(), mmChainAccno));
							}else{
								$("#mmChainAccno").html(_.template($("#tplMmChainAccno").html(), mmChainAccno));	
							}
						}else{
							$("#mmChainAccno").html(_.template($("#tplMmChainAccno").html(), mmChainAccno));
						}
							
					}else{
						alert("归属场馆错误");
					}
				}
			});
	 		
	 		 //合约开始时间
			/*  $("#mmAgreementStartDate2").datepicker({  
			        todayBtn : "linked",  
			        autoclose : true,  
			        todayHighlight : true,  
			    }).on('hide',function(e) {  
			                $('#thisForm2').data('bootstrapValidator')  
			                    .updateStatus('mmAgreementStartDate2', 'NOT_VALIDATED',null)  
			                    .validateField('mmAgreementStartDate2');
			 });  
			 
		    $("#mmAgreementStartDate").datepicker({  
		        todayBtn : "linked",  
		        autoclose : true,  
		        todayHighlight : true,  
		    }).on('hide',function(e) {  
		                $('#thisForm2').data('bootstrapValidator')  
		                    .updateStatus('mmAgreementStartDate', 'NOT_VALIDATED',null)  
		                    .validateField('mmAgreementStartDate');
		    }); */
		    
		    //合约到期时间
		  /*   $("#mmAgreementEndDate2").datepicker({  
		        todayBtn : "linked",  
		        autoclose : true,  
		        todayHighlight : true,  
		    }).on('hide',function(e) {  
		                $('#thisForm2').data('bootstrapValidator')  
		                    .updateStatus('mmAgreementEndDate2', 'NOT_VALIDATED',null)  
		                    .validateField('mmAgreementEndDate2');  
		    });
		    
		    $("#mmAgreementEndDate").datepicker({  
		        todayBtn : "linked",  
		        autoclose : true,  
		        todayHighlight : true,  
		    }).on('hide',function(e) {  
		                $('#thisForm2').data('bootstrapValidator')  
		                    .updateStatus('mmAgreementEndDate', 'NOT_VALIDATED',null)  
		                    .validateField('mmAgreementEndDate');  
		    });  
			
			
			$("#mmAgreementStartDate").change(function(){
				if($("#mmAgreementStartDate").val() != ""){
					var arr = new Array();
					arr = $("#mmAgreementStartDate").val().split("/");
					var newDate = arr[2]+arr[0]+arr[1];
					$("#mmAgreementStartDate").val(newDate);
				}
			});
			
			$("#mmAgreementStartDate2").change(function(){
				if($("#mmAgreementStartDate2").val() != ""){
					var arr = new Array();
					arr = $("#mmAgreementStartDate2").val().split("/");
					var newDate = arr[2]+arr[0]+arr[1];
					$("#mmAgreementStartDate2").val(newDate);
				}
			});
		
			$("#mmAgreementEndDate").change(function(){
				if($("#mmAgreementEndDate").val() != ""){
					var arr = new Array();
					arr = $("#mmAgreementEndDate").val().split("/");
					var newDate = arr[2]+arr[0]+arr[1];
					$("#mmAgreementEndDate").val(newDate);
				}
			});
			
			$("#mmAgreementEndDate2").change(function(){
				if($("#mmAgreementEndDate2").val() != ""){
					var arr = new Array();
					arr = $("#mmAgreementEndDate2").val().split("/");
					var newDate = arr[2]+arr[0]+arr[1];
					$("#mmAgreementEndDate2").val(newDate);
				}
			}); */
				
			
			//添加校验
			$("#addButton").click(function(){
				//场馆等级
				var mmPmtMode = $("#mmPmtMode").val();
				if(mmPmtMode=="0"){
					layer.msg("请选择场馆等级!");
					return false;
				}
				var mmChainAccno= $("#mmChainAccno").val();
				if(mmChainAccno==""){
					layer.msg("上级场馆不存在,请添加上级场馆!");
					return false;
				}

				//上级场馆号获取
				var trimab = $("#mmChainAccno").find("option:selected").text();
				var str2=trimab.substring(trimab.indexOf("--")+2,trimab.lastIndexOf("--"));
				$("#mmOldAccNumber").val(str2);
				
				var mmAgreementStartDate = $("#mmAgreementStartDate").val();
				var mmAgreementEndDate = $("#mmAgreementEndDate").val();
				if(mmAgreementStartDate != "" && mmAgreementEndDate != ""){
					if(Number(mmAgreementStartDate)>Number(mmAgreementEndDate)){
						alert("合约开始时间不可以大于合约结束时间！");
						return false;
					}
				}
			});
			
			validateInput();
		});		
		
		
		 //选择场馆等级 - 跳动归属场馆
		 $("#mmPmtMode").change(function(){
			 var mmPmtMode = $("#mmPmtMode").val();
			 
	 		 $.ajax({
				type : "POST",
				url : "${ctx}/staff/search_mermst_Data",
				dataType : "json",
				data : {
					mmPmtMode : mmPmtMode
				},
				success : function(data) {
					if (data.status == "OK") {
						mmChainAccno = data.value;
						if(mmChainAccno==""){
							mmChainAccno="1";
							if(mmPmtMode=="0" || mmPmtMode=="1"){
								$("#mmChainAccno").html(_.template($("#tplMmChainAccno0").html(), mmChainAccno));
							}else{
								$("#mmChainAccno").html(_.template($("#tplMmChainAccno").html(), mmChainAccno));	
							}
						}else{
							$("#mmChainAccno").html(_.template($("#tplMmChainAccno").html(), mmChainAccno));
						}
						
					}else{
						alert("归属场馆错误");
					}
				}
			});
	 		 
		 });
		 
		</script>
		
		<script type="text/template" id="tplMmChainAccno0">
	 		<@ _.each(mmChainAccno, function (evt) { @>
					<option value="1">默认--欢乐大世界</option>
			<@ }); @>
		</script>
		
		<script type="text/template" id="tplMmChainAccno">
	 		<@ _.each(mmChainAccno, function (evt) { @>
					<option value="<@= evt.mmPmtMode @>"><@= evt.mmLevelName @>--<@= evt.mmBizName@></option>
			<@ }); @>
		</script>
</body>
</html>