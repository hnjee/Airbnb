<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<script src="http://code.jquery.com/jquery-latest.min.js"></script>
<script type="text/javascript" src="https://service.iamport.kr/js/iamport.payment-1.1.5.js"></script>
<script>



	$(window).load(function() {
		var IMP = window.IMP; // 생략가능
		IMP.init('imp76790166'); // 'iamport' 대신 부여받은 "가맹점 식별코드"를 사용
		IMP.request_pay(
			{
			    pg : 'inicis', // version 1.1.0부터 지원.
			    pay_method : 'card',
			    merchant_uid : 'merchant_' + new Date().getTime(),
			    name : '${vo.placeName}',

			    amount : 100, /* ${vo.placePrice}*${days}+${vo.placePrice}*0.1, */

			    buyer_email : 'iamport@siot.do',
			    buyer_name : '구매자이름',
			    buyer_tel : '010-1234-5678',
			    buyer_addr : '서울특별시 강남구 삼성동',
			    buyer_postcode : '123-456',
			    m_redirect_url : 'http://localhost:8080/s1/'
			    /* url 주소를 변경해줘야됩니다.  */
			    //m_redirect_url : 'http://192.168.0.7:8080/???'
			    //m_redirect_url : ''//결제 완료시 넘어가는 부분
			    //app_scheme : 'iamportapp'
			},
			
			function(rsp) {
				if ( rsp.success ) {
			        var msg = '결제가 완료되었습니다.';
			        msg += '고유ID : ' + rsp.imp_uid;
			        msg += '상점 거래ID : ' + rsp.merchant_uid;
			        msg += '결제 금액 : ' + rsp.paid_amount;
			        msg += '카드 승인번호 : ' + rsp.apply_num;
			        
			        
			        
				    $.post("http://localhost:8080/s1/booking/payment", {payType:'1', payInfo:'${payInfo}', payTotal:rsp.paid_amount, bookingNum:'${bvo.bookingNum}'}, function(result) {
						
						if (result>0){
							alert(msg);
						} else {
							msg='결제에 문제가 있어 취소되었습니다.'
							alert(msg);
						}
						
					});
				    
			    } else {
			        var msg = '결제에 실패하였습니다.';
			        msg += '에러내용 : ' + rsp.error_msg;
			        msg += '고유ID : ' + rsp.imp_uid;
			        msg += '상점 거래ID : ' + rsp.merchant_uid;
			        msg += '결제 금액 : ' + rsp.paid_amount;
			        msg += '카드 승인번호 : ' + rsp.apply_num;
			        alert(msg);
			    }
				
				opener.location.href="../"
				window.close();
			   
			}
		);
	});
</script>
</body>
</html>