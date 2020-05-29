<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
	*{ margin: 0; padding: 0; }
 
	.chat_wrap .header { font-size: 12px; padding: 8px 0; background: #F18C7E; color: white; text-align: center;  }
	 
	.chat_wrap .chat { padding-bottom: 80px; background-color: silver; background-color: rgba( 235, 235, 235, 0.5 ); overflow-y:scroll; height :450px;}
	.chat_wrap .chat ul { width: 100%; list-style: none; }
	.chat_wrap .chat ul li { width: 100%; }
	.chat_wrap .chat ul.left { text-align: left; }
	.chat_wrap .chat ul.right { text-align: right; }
	 
	.chat_wrap .chat ul li > div { font-size: 13px;  }
	.chat_wrap .chat ul li > div.sender { margin: 10px 20px 0 20px; font-weight: bold; }
	.chat_wrap .chat ul li > div.message { display: inline-block; word-break:break-all; margin: 5px 20px; max-width: 75%; border: 1px solid #888; padding: 10px; border-radius: 5px; background-color: #FCFCFC; color: #555; text-align: left; }
	 
	.chat_wrap .input-div {  width: 100%; background-color: #FFF; text-align: center; border-top: 1px solid #F18C7E; }
	.chat_wrap .input-div > textarea { width: 100%; height: 80px; border: none; padding: 10px; }
	 
	.format { display: none; }

	.time {
		display: inline-block;
	}
</style>
</head>
<body>
		
<div class="chat_wrap">
    <div class="header">
        <h2>Message</h2>
    </div>
    <div class="chat">
    	
		<c:forEach items="${list}" var="vo">
		<c:if test="${vo.s_memberNum ne member.memberNum}">
        <ul class="left">
        	<li><div class="sender"><img src="${pageContext.request.contextPath}/resources/images/member/${hostFile.fileName}" height="42" width="42">${vo.sendName }</div></li>
			<li><div class="message">${vo.message }</div><div class="time">${vo.sendDate}<br>${vo.sendTime }</div></li>
		
            <!-- 동적 생성 -->
        </ul>
        </c:if>
        <c:if test="${vo.s_memberNum eq member.memberNum}">
        <ul class="right">
        	<li><div class="sender"><img src="${pageContext.request.contextPath}/resources/images/member/${myFile.fileName}" height="42" width="42">${vo.sendName }</div></li>
			<li><div class="time">${vo.sendDate}<br>${vo.sendTime }</div><div class="message">${vo.message }</div></li>
		
            <!-- 동적 생성 -->
        </ul>
        </c:if>
        </c:forEach>
    </div>
     
    <div class="input-div">
        <textarea placeholder="Press Button for send message." name="message" id="comm"></textarea>
       
			   
			    <button class="btn btn-primary">메세지 전송</button>
				<a href="${pageContext.request.contextPath}/message/checkMessage?memberNum=${member.memberNum }"><b  style="font-size: 1.4em; line-height: 40px;">뒤로 가기</b></a>
    </div>
 	
    <!-- format -->
 
    <div class="chat format">
        <ul>
            <li>
                <div class="sender">
                    <span></span>
                </div>
                <div class="message">
                    <span></span>
                </div>
            </li>
        </ul>
    </div>
</div>

<script type="text/javascript">

$(".chat").animate({scrollTop : $(".chat").height()+5000},1);

$(".btn").click(function() {
	var message =$('#comm').val();
	var ajaxOption = {
            url : "./windowSend",
            
            data : {s_memberNum:'${member.memberNum}', sendName:'${member.name }', r_memberNum:'${messageVO.s_memberNum }', receiveName: '${messageVO.sendName }', message:message},
            type : "POST",
            dataType : "html"
            
    };  
	$.ajax(ajaxOption).done(function(data){
      
        $('.back').children().remove();
       
        $('.back').html(data);
    });
	

});




</script>

</body>
</html>

