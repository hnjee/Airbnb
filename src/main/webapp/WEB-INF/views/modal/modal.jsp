<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
 
<c:set value="${param.modal}" var="modal"></c:set>

 <div class="modal-dialog">
    <!-- Modal content-->
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal">&times;</button>
        <h4 class="modal-title"></h4>
      </div>
      
      <div class="modal-body">
        <c:import url="./member/${modal}.jsp"></c:import>
      </div>
      
      
    </div>

  </div>