<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:include page="../../jsp/modules/header.jsp" />

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
									<form action="books" method="post">
										<div class="row">
											<div class="col-12">
												<h5 class="form-title"><span>Book Information</span></h5>
											</div>
											<div class="col-12 col-sm-4">
												<div class="form-group local-forms">
													<label>Book ID <span class="login-danger">*</span></label>
													<input type="text" class="form-control" name="BookId">
												</div>
											</div>
											<div class="col-12 col-sm-4">
												<div class="form-group local-forms">
													<label>Title <span class="login-danger">*</span></label>
													<input type="text" class="form-control" name="Title">
												</div>
											</div>
											<div class="col-12 col-sm-4">
												<div class="form-group local-forms">
													<label>Author <span class="login-danger">*</span></label>
													<input type="text" class="form-control" name="Author">
												</div>
											</div>
											<div class="col-12 col-sm-4">
												<div class="form-group local-forms">
													<label>Language <span class="login-danger">*</span></label>
													<select class="form-control select" name="Language">
														<option>Select Language</option>
														<option>English</option>
														<option>Hindi</option>
														<option>Marathi</option>
														
													</select>
												</div>
											</div>
											<div class="col-12 col-sm-4">
												<div class="form-group local-forms">
													<label>ISBN <span class="login-danger">*</span></label>
													<input type="text" class="form-control" name="ISBN">
												</div>
											</div>
											<div class="col-12 col-sm-4">
												<div class="form-group local-forms">
													<label>Publisher</label>
													<input type="text" class="form-control" name="Publisher">
												</div>
											</div>
											<div class="col-12 col-sm-4">
												<div class="form-group local-forms">
													<label>Publisher City <span class="login-danger">*</span></label>
													<input type="text" class="form-control" name="PublisherCity">
												</div>
											</div>
											<div class="col-12 col-sm-4">
												<div class="form-group local-forms">
													<label>Publication Date  <span class="login-danger">*</span></label>
													<input type="Date" class="form-control" name="PublicationDate">
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
<include page="../../jsp/modules/footer.jsp"></include>


    
