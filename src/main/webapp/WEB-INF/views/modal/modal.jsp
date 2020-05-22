<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
 
<c:set value="${param.modal}" var="modal"></c:set>

 <div class="modal-dialog">
    <!-- Modal content-->
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal">&times;</button>
        <h4 class="modal-title">에어비엔비에 오신것을 환영합니다</h4>
      </div>
      
      <div class="modal-body">
        <c:import url="./member/${modal}.jsp"></c:import>
      </div>
      
      <div class="modal-footer">
        <button type="button" class="btn btn-default close" data-dismiss="modal" >Close</button>
      </div>
    </div>

  </div>