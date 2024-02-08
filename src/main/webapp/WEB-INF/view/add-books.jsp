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
							<div class="col">
								<h3 class="page-title">Add Books</h3>
								<ul class="breadcrumb">
									<li class="breadcrumb-item"><a href="library.html">Library</a></li>
									<li class="breadcrumb-item active">Add Books</li>
								</ul>
							</div>
						</div>
					</div>
					<!-- /Page Header -->
				
					<div class="row">
						<div class="col-sm-12">
						
							<div class="card">
								<div class="card-body">
									<form>
										<div class="row">
											<div class="col-12">
												<h5 class="form-title"><span>Book Information</span></h5>
											</div>
											<div class="col-12 col-sm-4">
												<div class="form-group local-forms">
													<label>Book ID <span class="login-danger">*</span></label>
													<input type="text" class="form-control">
												</div>
											</div>
											<div class="col-12 col-sm-4">
												<div class="form-group local-forms">
													<label>Book Name <span class="login-danger">*</span></label>
													<input type="text" class="form-control">
												</div>
											</div>
											<div class="col-12 col-sm-4">
												<div class="form-group local-forms">
													<label>Language <span class="login-danger">*</span></label>
													<select class="form-control select">
														<option>Select Language</option>
														<option>English</option>
														<option>Turkish</option>
														<option>Chinese</option>
														<option>Spanish</option>
														<option>Arabic</option>
													</select>
												</div>
											</div>
											<div class="col-12 col-sm-4">
												<div class="form-group local-forms">
													<label>Department <span class="login-danger">*</span></label>
													<input type="text" class="form-control">
												</div>
											</div>
											<div class="col-12 col-sm-4">
												<div class="form-group local-forms">
													<label>Class</label>
													<select class="form-control select">
														<option>Select Class <span class="login-danger">*</span></option>
														<option>LKG</option>
														<option>UKG</option>
														<option>1</option>
														<option>2</option>
														<option>3</option>
														<option>4</option>
														<option>5</option>
														<option>6</option>
														<option>7</option>
														<option>8</option>
														<option>9</option>
														<option>10</option>
														<option>11</option>
														<option>12</option>
													</select>
												</div>
											</div>
											<div class="col-12 col-sm-4">
												<div class="form-group local-forms">
													<label>Type <span class="login-danger">*</span></label>
													<select class="form-control select">
														<option>Select Type</option>
														<option>Book</option>
														<option>DVD</option>
														<option>CD</option>
														<option>Newspaper</option>
													</select>
												</div>
											</div>
											<div class="col-12 col-sm-4">
												<div class="form-group local-forms">
													<label>Status <span class="login-danger">*</span></label>
													<select class="form-control select">
														<option>Select Status</option>
														<option>In Stock</option>
														<option>Out of Stock</option>
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
			</div>
			<!-- /Page Wrapper -->
			
        </div>
		
<script src="assets/plugins/select2/js/select2.min.js"></script>		
<include page="../jsp/modules/footer.jsp"></include>


    
