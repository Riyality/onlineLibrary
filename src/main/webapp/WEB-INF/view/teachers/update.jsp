
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
								<h3 class="page-title">Edit Teachers</h3>
								<ul class="breadcrumb">
									<li class="breadcrumb-item"><a href="teachers.html">Teachers</a></li>
									<li class="breadcrumb-item active">Edit Teachers</li>
								</ul>
							</div>
						</div>
					</div>
					<!-- /Page Header -->
				
					<div class="row">
						<div class="col-sm-12">
						
							<div class="card">
								<div class="card-body">
									<form action="updateTeacher" method="post">
										<div class="row">
											<div class="col-12">
												<h5 class="form-title"><span>Teacher Registration Form</span></h5>
													 
												</div>
											 <div class="col-12 col-sm-4">
												<div class="form-group local-forms">
													<label>Teacher Id <span class="login-danger">*</span></label>
													<input type="text" class="form-control" placeholder="Enter Teacher Id" name="TeacherId" value="${param.TeacherId }">
												</div>
											</div>    								
											
											<div class="col-12 col-sm-4">
												<div class="form-group local-forms">
													<label >Firste Name <span class="login-danger">*</span></label>
													<input type="text" class="form-control" placeholder="Enter Firste Name" name="FirstName" value="${param.FirstName }">
												</div>
											</div>
											
											<div class="col-12 col-sm-4">
												<div class="form-group local-forms">
													<label>Last Name <span class="login-danger">*</span></label>
													<input type="text" class="form-control" placeholder="Enter Last Name" name="LastName" value="${param.LastName }">
												</div>
											</div>
											
											
											
											<div class="col-12 col-sm-4">
												<div class="form-group local-forms">
													<label>Email ID <span class="login-danger">*</span></label>
													<input type="email" class="form-control" placeholder="Enter Mail Id" name="Email" value="${param.Email }">
												</div>
											</div>
											
											
											<div class="col-12 col-sm-4">
												<div class="form-group local-forms">
													<label>Contact Number <span class="login-danger">*</span></label>
													<input type="text" class="form-control" placeholder="Enter Contact Number" name="ContactNumber" value="${param.ContactNumber }">
												</div>
											</div>
											
											
											<div class="col-12 col-sm-4">
																							
													<div class="form-group local-forms">
													<label >Faculty<span class="login-danger">*</span></label>
													<select class="form-control select"   name="Faculty" value="${param.Faculty }">
														<option>Please Select Faculty  </option>
														<option>B.A</option>
														<option>B.com</option>
														<option>B.C.A</option>
														<option>B.C.S</option>
														
													  </select>
												</div>
											</div>
											

											
											<div class="col-12">
												<div class="student-submit">
													<button type="submit" class="btn btn-primary">Submit</button>
												</div>
											</div>
								</div>
							</form>
								</div>
							</div>
							
						</div>					
					</div>					
				</div>
				
				
			</div>			<!-- /Page Wrapper -->
			
        </div>
		<!-- /Main Wrapper -->
		
		
		<!-- Datepicker Core JS -->
		<script src="<c:url value="resources/assets/plugins/moment/moment.min.js"/>"></script>
		<script src="<c:url value="resources/assets/js/bootstrap-datetimepicker.min.js"/>"></script>

<include page="../modules/footer.jsp"></include>
  