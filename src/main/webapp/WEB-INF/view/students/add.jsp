<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:include page="../jsp/modules/header.jsp" />

<!-- Rest of your JSP page content goes here -->
<%@ page isELIgnored="false" %>

			<!-- Page Wrapper -->
            <div class="page-wrapper">
                <div class="content container-fluid">
				
					<!-- Page Header -->
					<div class="page-header">
						<div class="row align-items-center">
							<div class="col-sm-12">
								<div class="page-sub-header">
									<h3 class="page-title">Add Students</h3>
									<ul class="breadcrumb">
										<li class="breadcrumb-item"><a href="students.html">Student</a></li>
										<li class="breadcrumb-item active">Add Students</li>
									</ul>
								</div>
							</div>
						</div>
					</div>
					<!-- /Page Header -->
				
					<div class="row">
						<div class="col-sm-12">
						
							<div class="card comman-shadow">
								<div class="card-body">
									<form action="add_student">
										<div class="row">
											<div class="col-12">
												<h5 class="form-title student-info">Student Information <span><a href="javascript:;"><i class="feather-more-vertical"></i></a></span></h5>
											</div>
											<div class="col-12 col-sm-4">  
												<div class="form-group local-forms">
													<label >Student Id <span class="login-danger">*</span></label>
													<input class="form-control" name="StudentId" type="text" placeholder="Enter Student Id" >
												</div>
											</div>
											
											<div class="col-12 col-sm-4">  
												<div class="form-group local-forms">
													<label >First Name <span class="login-danger">*</span></label>
													<input class="form-control" name="FirstName" type="text" placeholder="Enter First Name" >
												</div>
											</div>
											<div class="col-12 col-sm-4">
												<div class="form-group local-forms">
													<label >Last Name <span class="login-danger">*</span></label>
													<input class="form-control" name="LastName" type="text" placeholder="Enter last Name" >
												</div>
											</div>
											
								
											
											<div class="col-12 col-sm-4">
												<div class="form-group local-forms">
													<label >E-Mail <span class="login-danger">*</span></label>
													<input class="form-control" name="Email" type="text" placeholder="Enter Email Address" >
												</div>
											</div>
													
											<div class="col-12 col-sm-4">
														<div class="form-group local-forms">
															<label >Class <span class="login-danger">*</span></label>
															<select class="form-control select" name="className">
																<option>Please Select Class  </option>
																<option>BA-I</option>
																<option>BA-II</option>
																<option>BA-III</option>
																<option>BCA-I</option>
																<option>BCA-II</option>
																<option>BCA-III</option>
															  </select>
														</div>
													</div>
									         	<div class="col-12 col-sm-4">
												<div class="form-group local-forms">
													<label >Department <span class="login-danger">*</span></label>
													<select class="form-control select" name="Department">
														<option>Please Select Department  </option>
														<option>B.A</option>
														<option>B.com</option>
														<option>B.C.A</option>
														<option>B.C.S</option>
														
													  </select>
												</div>
											</div>
											<div class="col-12 col-sm-4">
												<div class="form-group local-forms">
													<label >Phone </label>
													<input class="form-control" name="ContactNumber" type="text" placeholder="Enter Phone Number" >
												</div>
											</div>
											<!-- <div class="col-12 col-sm-4">
												<div class="form-group students-up-files">
													<label>Upload Student Photo (150px X 150px)</label>
													<div class="uplod">
														<label class="file-upload image-upbtn mb-0">
															Choose File <input type="file">
														</label>
													</div>
												</div>
											</div> -->
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
			</div>
			<!-- /Page Wrapper -->
			
        </div>
		<!-- /Main Wrapper -->

<h1>${successMsg}</h1>
<h1>${errMsg}</h1>
		<!-- Datepicker Core JS -->
		<script src="assets/plugins/moment/moment.min.js"></script>
		<script src="assets/js/bootstrap-datetimepicker.min.js"></script>
<include page="../jsp/modules/footer.jsp"></include>
   