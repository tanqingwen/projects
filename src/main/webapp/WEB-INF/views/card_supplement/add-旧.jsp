<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="tags" tagdir="/WEB-INF/tags" %>
<%@ page import="cn.happyworlds.imgmt.to.Constants"%>
<!DOCTYPE html>
<html>
  <head>
    <title>综合管理系统|会员卡补办</title>
    <tags:head_common_content/>
    <link rel="stylesheet" href="${assets}/datepicker/datepicker3.css">
    <link rel="stylesheet" href="${assets}/validator/css/validator.css"/>
  </head>
  <body class="hold-transition skin-blue-light sidebar-mini">
  	<div style="position:absolute;">
  		<jsp:include flush="true" page="/WEB-INF/tags/IDM10.jsp"></jsp:include>
		<jsp:include flush="true" page="/WEB-INF/tags/RFEYEU010.jsp"></jsp:include>
	</div>
  
    <div class="wrapper">

	  <!-- Main header -->
      <tags:main_header/>
      
      <!-- Left side column. contains the logo and sidebar -->
      <tags:main_sidebar active="staff"/>
      
      <!-- Content Wrapper. Contains page content -->
      <div class="content-wrapper">
      	<div class="context-tips">
      		<tags:action_tip/>
      	</div>
        <!-- Content Header (Page header) -->
        <section class="content-header">
			<h1>会员卡补办</h1>
				<ol class="breadcrumb">
					<li><a href="${ctx }/"><i class="fa fa-dashboard"></i> 主页</a></li>
					<li><a href="${ctx }/startTreeviewDetail/hykzy">会员卡作业</a></li>
					<li class="active">会员卡补办</li>
				</ol>
		</section>

        <!-- Main content -->
        <section class="content">
          	<div class="box box-primary">
          		<div class="box-header with-border">
                  <h3 class="box-title"><i class="fa fa-plus"></i> 添加表单</h3>
                </div><!-- /.box-header -->
                <form id="CLOSS" name="CLOSS" class="form-horizontal">
                	<div class="box-body">
                		<div class="col-sm-6">
                			<div class="row">
	                			<div class="form-group">
								    <label for="id" class="col-sm-3 control-label">证件类型<font color="red">*</font></label>
								    <div class="col-sm-8">
								     	<select id="idType" name="idType" disabled="disabled" class="form-control"> 
									       <c:forEach var="idType" items="${idTypeList}">
										      	 <option value="${idType.cbIdType }" >${idType.cbIdType }--${idType.cbIdDesc }</option>
										      </c:forEach>
								    	</select>
								    </div>
								</div>
								<div class="form-group">
								    <label for="password" class="col-sm-3 control-label">身份证号码<font color="red">*</font></label>
								    <div class="col-sm-6">
								      <input type="text" class="form-control"  id="nric" name="nric" value="" disabled="disabled"/>
								    </div>
								     <div class="col-sm-2">
								    	<button type="button" id="idcard" name="idcard" onclick="readCard()" >读身份证</button>
								    </div>
								</div>
								<div class="form-group">
								    <label for="phoneNumber" class="col-sm-3 control-label">姓名</label>
								    <div class="col-sm-8">
								      <input class="form-control" id="varOld_name" name="varOld_name" type="text" value="" disabled="disabled"/>
								    </div>
								</div>
								<div class="form-group">
								    <label for="id" class="col-sm-3 control-label">客户等级<font color="red">*</font></label>
								    <div class="col-sm-8">
								     	<select id="cbCardPrdctGroup" disabled="disabled" name="cbCardPrdctGroup" class="form-control"> 
									     <c:forEach var="prdGrp" items="${prdGrpList}">
									      	 <option value="${prdGrp.prProdctGroup }" >${prdGrp.prProdctGroup }--${prdGrp.prGroupDesc }</option>
									      </c:forEach>
								    	</select>
								    </div>
								</div>
								<div class="form-group">
								    <label for="phoneNumber" class="col-sm-3 control-label">会员卡余额</label>
								    <div class="col-sm-8">
								      <input type="text" class="form-control"  id="varbalance" name="varbalance" value="" disabled="disabled"/>
								    </div>
								</div>
                			</div>
                		</div>
                		<div class="col-sm-6">
                			<div class="row">
                				<div class="form-group">
								    <label for="email" class="col-sm-3 control-label">手机号</label>
								    <div class="col-sm-8">
								      <input type="text" class="form-control" id="mobile" name="mobile" onblur="phone()"/>
								    </div>
								</div>
								<div class="form-group">
								    <label for="status" class="col-sm-3 control-label">新持卡人号码</label>
								    <div class="col-sm-6">
								    	<input type="text" class="form-control" id="cbCardholderNo" name="cbCardholderNo" disabled="disabled"/>
								    	<input type="hidden" class="form-control" id="varBlock0str" name="varBlock0str" value=""/>
								    	<input type="hidden" id="trxnCode" name="trxnCode" value="SUPPL">
								    	<input type=hidden name="varRn_reason" value="AR">
								    	<input type=hidden name="varNC_EMERGENCY" value="R">
								    </div>
								    <div class="col-sm-2">
								   		<input type="button" id="MagCard3" name="idcard" onclick="findCard()" value="读卡信息"/>
									</div>
								</div>
								<div class="form-group">
								    <label for="status" class="col-sm-3 control-label">旧持卡人号码</label>
								    <div class="col-sm-8">
								    	<input type="text" class="form-control" id="oldcbCardholderNo"  name="oldcbCardholderNo" disabled="disabled"/>&nbsp;&nbsp;&nbsp;<span style="color:blue;" id="cardstatus"></span>
								    </div>
								</div>
								<div class="form-group">
								    <label for="phoneNumber" class="col-sm-3 control-label">出生日期</label>
								    <div class="col-sm-8">
								      <input type="text" class="form-control" id="varCb_birthday" name="varCb_birthday" disabled="disabled" placeholder="例：19901231   表示1990年12月31日"/>
								    </div>
								</div>
								<div class="form-group">
								    <label for="phoneNumber" class="col-sm-3 control-label">移动电话</label>
								    <div class="col-sm-8">
								      <input type="text" class="form-control"  id="varOld_mobile" name="varOld_mobile" value="" disabled="disabled"/>
								    </div>
								</div>
								
								
                			</div>
                		</div>
					</div>
					<div class="box-footer">
						<div class="pull-right">
							<button  id="addButton" name="addButton" type="button" style="background-color: red;" class="btn btn-info "> 办理</button>
							<a type="button" class="btn btn-default " href="${ctx }/"><i class="glyphicon glyphicon-chevron-left" ></i> 返回</a>
						</div>
	                </div><!-- /.box-footer -->
	        	</form>
			</div>
			</section>
        </div><!-- /.box -->
        <!-- /.content -->
      </div><!-- /.content-wrapper -->
      <tags:main_footer/>

      <!-- Control Sidebar -->
      <tags:control_sidebar/>
  		<!-- ./wrapper -->
    
    <tags:load_common_js/>
    <script src="${assets}/underscore/underscore.min.js"></script>
    <script src="${assets}/datepicker/datepicker.js"></script>
	<script src="${assets}/datepicker/locales/zh-CN.js"></script>
    <script src="${assets}/validator/js/validator.js"></script>
    <script src="${assets}/bootstrap/js/bootstrap.min.js"></script>
    <script src="${assets}/crypto/md5.js"></script>
    
    

   <script type="text/javascript">

	//读取身份证:获取身份证号码、出生日期
	function readCard(){
		var idNo=CLOSS.idType.value;
		if(idNo!="1"){
			alert("选择证件类型为身份证");
			return;
		}
			var strReadResult=CVR_IDCard.ReadCard();
		if (strReadResult == "0") {
			$("#nric").val(CVR_IDCard.CardNo);
			getCard();
		}else {
			alert("读卡失败,"+strReadResult);
		}
	}
	
	//获取卡号
	function getCard(){
		var idType=CLOSS.idType.value;
		var idNo=CLOSS.nric.value;
		if(idType==null||idType==""||idNo==null||idNo==""){
			return;
		}
		var s=CLOSS.cbCardholderNo;
		s.length=0;
		$.ajax({
			type : "POST",
			url : "${ctx}/blkmlc/getCardInfo",
			dataType : "json",
			data : {
				idType: idType,
				idNo: idNo	
			},
			success : function(data) {
				if (failureProcess("${ctx}", data)) {
					return;
				}
				if(data==null){
					alert("使用证件信息没有找到对应数据");
					return;
				}else{
					var res=data.value;
					/* for(var i=0;i<res.length;i++){
						s.options.add(new Option(cardview(res[i]),res[i]));
					} */
					CLOSS.oldcbCardholderNo.value=res[0].substring(6);
					
					getInfo(res[0]);
				}
			}
		 });
	}
	
	//挂失卡片信息
	function getInfo(val){
		$.ajax({
			type : "POST",
			url : "${ctx}/blkmlc/getCardInfo1",
			dataType : "json",
			data : {
				cardNo: val
			},
			success : function(data) {
				if (failureProcess("${ctx}", data)) {
					return;
				}
				if(data==null){
					alert("没有找到卡号记录！");
					return;
				}else{
					var res=data.value;
					var res=data.value;
					if(res[7] != "L-挂失卡"){
						alert("此卡不能补办，请先挂失！");
						CLOSS.oldcbCardholderNo.value="";
						CLOSS.nric.value="";
						return;
					}else
						document.getElementById("cardstatus").innerHTML=res[7];
						document.getElementById("cardstatus").style.display="inline-block";
						CLOSS.varbalance.value = res[8];
						CLOSS.varOld_name.value = res[2];
						CLOSS.varOld_name.value = res[2];
						CLOSS.varCb_birthday.value = res[5];
						CLOSS.varOld_mobile.value = res[4];
						CLOSS.cbCardPrdctGroup.value = res[3];
					}
				}
		 });
	}
	
	// 卡号处理
	/* function cardview(cardno){
		if(cardno!=null&&cardno.length==16){
			return cardno.substr(10);
		}else {
			return cardno;
		}
	} */
	
	
	//读卡号
	function findCard(){
		
		readCardNo("cbCardholderNo");
		var cardNo=document.getElementsByName("cbCardholderNo")[0].value;
		if(cardNo=="undefined" || cardNo==""){
			return;
		}
		cardNo="<%=Constants.baseBIN%>"+cardNo;
		$.ajax({
			type : "POST",
			url : "${ctx}/CardRecharge/getKey",
			dataType : "json",
			data : {
				cardNumber : cardNo,
				type: 0
			},
			success : function(data) {
				if (failureProcess("${ctx}", data)) {
					document.getElementById(document.getElementsByName("cbCardholderNo")[0]).value = "";
					alert(e.message);
					return;
				}
				var p=data.value;
					getCardMess(cardNo);
			}
		});
	 }	
	
	function getCardMess(cardNo) {
		$.ajax({
			type : "POST",
			url : "${ctx}/CardRecharge/getCardMess",
			dataType : "json",
			data : {
				cardNumber : cardNo
			},
			success : function(data) {
				if (failureProcess("${ctx}", data)) {
					return;
				}
				var res=data.value;
				
			}
		});
	 }	
	
	
	//提交
	$("#addButton").click(function(){
	  var newCardNo=CLOSS.cbCardholderNo.value;
	  newCardNo="<%=Constants.baseBIN %>"+newCardNo
	  var oldCardNo=CLOSS.oldcbCardholderNo.value;
	  var trxnCode=CLOSS.trxnCode.value;
	  var cbPrdct1=CLOSS.cbCardPrdctGroup.value;
	  var idNo=CLOSS.nric.value;
	  if(idNo==null||idNo==""){
		  alert("请读取身份证号信息！");
		  return false;
	  }
	//0块
	   if(mt_block0==null || mt_block0==""){
		  if(readBlock0()==null){
				return;
		  }
	  } 
	
	  var varBlock0str=document.getElementById("varBlock0str").value=mt_block0;
	  $.ajax({
		type : "POST",
		url : "${ctx}/CardSupplement/doCheckerApprove",
		dataType : "json",
		data : {
			newCardNo : newCardNo,
			oldCardNo : oldCardNo,
			trxnCode  : trxnCode,
			varBlock0str : varBlock0str,
			cbPrdct1  : cbPrdct1
		},
		success : function(data) {
			if (failureProcess("${ctx}", data)) {
				return;
			}
			var res = data.value;
			if(null!=res){
				alert("补卡成功！");	
			}
		}
	 });
	}); 
	
	
	
	
	$("#returnButton").click(function(){
		$("#CLOSS").attr("action", "${ctx }/");
	});
	
	function phone(){
		var value=$("#mobile").val();
		if(value == null){
			alert("请输入手机号");
		}else{
			$.ajax({
				type : "POST",
				url : "${ctx}/blkmlc/getCardInfo2",
				dataTypa : "json",
				data : {
					mobile : value,
					cbPlasticCd : 'L'
				},
				success : function(data){
					if(failureProcess("${ctx}",data)){
						return;
					}
					if(data == null){
						alert("没有找到卡记录");
						return;
					}else{
						var res=data.value;
						if(res[7] != "L-挂失卡"){
							alert("此卡不能补办，请先挂失！");
							return;
						}else{
							CLOSS.nric.value = res[1];
							CLOSS.varbalance.value = res[9];
							CLOSS.varOld_name.value = res[2];
							CLOSS.varCb_birthday.value = res[5];
							CLOSS.varOld_mobile.value = res[4];
							CLOSS.cbCardPrdctGroup.value = res[3];
							CLOSS.oldcbCardholderNo.value=res[8];
							document.getElementById("cardstatus").innerHTML=res[7];
							document.getElementById("cardstatus").style.display="inline-block";
						}
					}
				}
			});
		}
	}
</script>
  </body>
</html>
