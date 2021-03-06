<%@page import="com.airbnb.s1.message.MessageVO"%>
<%@page import="java.util.HashSet"%>
<%@page import="java.util.Set"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" type="text/css"
	href="../resources/css/myPage.css">
<link rel="stylesheet" type="text/css"
	href="../resources/css/headerStyle.css">
<c:import url="../template/boot.jsp"></c:import>
<link rel="stylesheet" type="text/css"
	href="../resources/css/footer.css">
<link rel="stylesheet"
	href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css"> 
	<style type="text/css">
		.content {
			width:100%;
			min-height: 720px;
			height:100%;
		}
		.contents {
			width:85%;
			height : 100%;
			min-width: 1000px;
			min-height: 600px;
			margin: 0 auto;
			padding: 0 35px;
			box-sizing: border-box;
			
		}
		.back{
			width: 100%;
			min-height: 600px;
			overflow-y:auto; 
			overflow-x:hidden;
			height :800px;
			box-sizing: border-box;
		}
		.btn{
			width:97%;
			height:30px;
			font-size: 1.4em;
		}
		
		.back:after {
			background-image: url("../resources/w3images/back.png");
			top:0;
		    left:0;
		    position:absolute;
		    background-size:100%;
		    opacity:0.5!important;
		    filter:alpha(opacity=50);
		    background-repeat: no-repeat;
		    background-position: center;
		    z-index:-1;
		    content:"";
		    width:100%;
		    height:100%;

		}
		
		table {
			  border-collapse: separate;
			  border-spacing: 0 5px;
			}
		.im{
			 border-left: 4px solid #369;
			 width: 44px;
			border-bottom: 1px solid #ccc;
   			 background: #efefef;
   			  
		}
		.dra {
			cursor: pointer;
			font-size: 1.4em;
			vertical-align: bottom;
				 
		}
		
	</style>
	
</head>
<body>
<c:if test="${member.memberNum ne memberNum}">

	<script type="text/javascript">
		$(document).ready(function() {
			alert("잘못된 접근입니다.");
			location.href="../";
		})
	</script>

</c:if>

<c:if test="${member.memberNum eq memberNum}">
<c:import url="../jsp/header.jsp"></c:import>
<div class="content">
	
<div class="contents">

  <h2><b>Message Box</b></h2><hr>

		
		<div class="back">
		<table class="table table-hover">
			<br>
			<c:forEach items="${list}" var="vo">
			
			<tr>
				<td class="im"><img src="${pageContext.request.contextPath}/resources/images/member/${vo.fileName}" height="42" width="42"></td>
				<td class="dra" title="${vo.memberNum }" id="${vo.name }">${vo.name }</td>
				
				
			</tr>
			</c:forEach>
			
		
		</table>
		
		</div>
	</div>
</div>

<hr>
<c:import url="../jsp/footer.jsp"></c:import>
</c:if>
</body>
<script type="text/javascript">


	
	$(".dra").click(function() {
			
		        	var s_memberNum = $(this).attr("title")
		        	var sendName = $(this).attr("id")
		        	var ajaxOption = {
		                    url : "./messageWindow",
		                    
		                    data : {r_memberNum: '${member.memberNum}', s_memberNum:s_memberNum, sendName:sendName},
		                    type : "POST",
		                    dataType : "html"
		                    
		            };  
		        	$.ajax(ajaxOption).done(function(data){
		              
		                $('.back').children().remove();
		                
		                $('.back').html(data);
		            });
		        	
			
		})
</script>

</html>