<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:include page="../modules/header.jsp" />

<!-- Rest of your JSP page content goes here -->
<%@ page isELIgnored="false" %>

			<!-- Page Wrapper -->
            <div class="page-wrapper">
                <div class="content container-fluid">
				
					<!-- Page Header -->
					<div class="page-header">
						<div class="row align-items-center">
							<div class="col">
								<h3 class="page-title">Borrow Book</h3>
								<ul class="breadcrumb">
									<li class="breadcrumb-item"><a href="library.html">Book</a></li>
									<li class="active">/Borrow </li>
								</ul>
							</div>
						</div>
					</div>
					<!-- /Page Header -->
				
					<div class="row">
						<div class="col-sm-12">
						
							<div class="card">
								<div class="card-body">
									<form action="addBorrow" method="post">
										<div class="row">
											<!-- <div class="col-12">
												<h5 class="form-title"><span>Book I</span></h5>
											</div> -->
											<div class="col-12 col-sm-4">
												<div class="form-group local-forms">
													<label>Book ID <span class="login-danger">*</span></label>
													<input type="text" class="form-control" name="BookId" placeholder="EnterBook Id" >
												</div>
											</div>
											<!-- <div class="col-12 col-sm-4">  
												<div class="form-group local-forms">
													<label >Student Name <span class="login-danger">*</span></label>
													<input class="form-control" name="StudentName" type="text" placeholder="Enter Student Name" >
												</div>
											</div> -->
										<div class="col-12 col-sm-4">
										    <div class="form-group local-forms">
										        <label>Student Name  <span class="login-danger">*</span></label>
										        <select class="form-control select" name="StudentName">
										            <option value="" selected="selected">Select a Student</option>
										            <c:forEach var="student" items="${studentList}">
										                <option value="${student.studentName}">${student.studentName}</option>
										            </c:forEach>
										        </select>
										    </div>
										</div>

  
													<div class="col-12 col-sm-4">
												<div class="form-group local-forms">
													<label>Issue Date<span class="login-danger">*</span></label>
													<input type="date" class="form-control" name="IssueDate" placeholder="Enter Issue Date">
												</div>
											</div>
																	<div class="col-12 col-sm-4">  
												<div class="form-group local-forms">
													<label >DueDate  <span class="login-danger">*</span></label>
													<input class="form-control" name="DueDate" type="date" placeholder="Enter DueDate" >
												</div>
											</div>
							
											</div>
												
											
											
											<div class="col-12">
												<div class="student-submit">
													<button type="submit" class="btn btn-primary">submit</button>
												</div>
											</div>
										</div>
									</form>
								</div>
							</div>							
						</div>					
					</div>					
				</div>				
		
<script src="<c:url value='/resources/assets/plugins/select2/js/select2.min.js' />"></script>

<include page="../modules/footer.jsp"></include>

    
