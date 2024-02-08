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
								<h3 class="page-title">Library</h3>
								<ul class="breadcrumb">
									<li class="breadcrumb-item"><a href="index.jsp">Dashboard</a></li>
									<li class="breadcrumb-item active">Library</li>
								</ul>
							</div>
						</div>
					</div>
					<!-- /Page Header -->
				
					<div class="row">
						<div class="col-sm-12">
						
							<div class="card card-table">
								<div class="card-body">
									<!-- Page Header -->
									<div class="page-header">
										<div class="row align-items-center">
											<div class="col">
												<h3 class="page-title">Library</h3>
											</div>
											<div class="col-auto text-end float-end ms-auto download-grp">
												<a href="#" class="btn btn-outline-primary me-2"><i class="fas fa-download"></i> Download</a>
												<a href="add-books.jsp" class="btn btn-primary"><i class="fas fa-plus"></i></a>
											</div>
										</div>
									</div>
									<!-- /Page Header -->
									<div class="table-responsive">
										<table class="table border-0 star-student table-hover table-center mb-0 datatable table-striped">
											<thead class="student-thread">
												<tr>
													<th>ID</th>
													<th>Name</th>
													<th>Language</th>
													<th>Department</th>
													<th>Class</th>
													<th>Type</th>
													<th>Status</th>
													<th class="text-end">Action</th>
												</tr>
											</thead>
											<tbody>
												<tr>
													<td>PRE2309</td>
													<td>
														<h2>
															<a>Acoustics</a>
														</h2>
													</td>
													<td>English</td>
													<td>Science</td>
													<td>10</td>
													<td>Book</td>
													<td>
														<span class="badge badge-success">In Stock</span>
													</td>
													<td class="text-end">
														<div class="actions">
															<a href="javascript:;" class="btn btn-sm bg-success-light me-2">
																<i class="feather-eye"></i>
															</a>
															<a href="edit-books.jsp" class="btn btn-sm bg-danger-light">
																<i class="feather-edit"></i>
															</a>
														</div>
													</td>
												</tr>
												<tr>
													<td>PRE2209</td>
													<td>
														<h2>
															<a>Acoustics</a>
														</h2>
													</td>
													<td>Geometry</td>
													<td>Science</td>
													<td>8</td>
													<td>Book</td>
													<td>
														<span class="badge badge-success">In Stock</span>
													</td>
													<td class="text-end">
														<div class="actions">
															<a href="javascript:;" class="btn btn-sm bg-success-light me-2">
																<i class="feather-eye"></i>
															</a>
															<a href="edit-books.jsp" class="btn btn-sm bg-danger-light">
																<i class="feather-edit"></i>
															</a>
														</div>
													</td>
												</tr>
												<tr>
													<td>PRE2213</td>
													<td>
														<h2>
															<a>Games</a>
														</h2>
													</td>
													<td>English</td>
													<td>General</td>
													<td>9</td>
													<td>Book</td>
													<td>
														<span class="badge badge-success">In Stock</span>
													</td>
													<td class="text-end">
														<div class="actions">
															<a href="javascript:;" class="btn btn-sm bg-success-light me-2">
																<i class="feather-eye"></i>
															</a>
															<a href="edit-books.jsp" class="btn btn-sm bg-danger-light">
																<i class="feather-edit"></i>
															</a>
														</div>
													</td>
												</tr>
												<tr>
													<td>PRE2143</td>
													<td>
														<h2>
															<a>Chess</a>
														</h2>
													</td>
													<td>English</td>
													<td>General</td>
													<td>7</td>
													<td>Book</td>
													<td>
														<span class="badge badge-danger">Out of Stock</span>
													</td>
													<td class="text-end">
														<div class="actions">
															<a href="javascript:;" class="btn btn-sm bg-success-light me-2">
																<i class="feather-eye"></i>
															</a>
															<a href="edit-books.jsp" class="btn btn-sm bg-danger-light">
																<i class="feather-edit"></i>
															</a>
														</div>
													</td>
												</tr>
												<tr>
													<td>PRE2009</td>
													<td>
														<h2>
															<a>Calculus</a>
														</h2>
													</td>
													<td>English</td>
													<td>Mathematics</td>
													<td>9</td>
													<td>Book</td>
													<td>
														<span class="badge badge-success">In Stock</span>
													</td>
													<td class="text-end">
														<div class="actions">
															<a href="javascript:;" class="btn btn-sm bg-success-light me-2">
																<i class="feather-eye"></i>
															</a>
															<a href="edit-books.jsp" class="btn btn-sm bg-danger-light">
																<i class="feather-edit"></i>
															</a>
														</div>
													</td>
												</tr>
												<tr>
													<td>PRE2431</td>
													<td>
														<h2>
															<a>Visual Basic</a>
														</h2>
													</td>
													<td>English</td>
													<td>Computer Science</td>
													<td>11</td>
													<td>Book</td>
													<td>
														<span class="badge badge-danger">Out of Stock</span>
													</td>
													<td class="text-end">
														<div class="actions">
															<a href="javascript:;" class="btn btn-sm bg-success-light me-2">
																<i class="feather-eye"></i>
															</a>
															<a href="edit-books.jsp" class="btn btn-sm bg-danger-light">
																<i class="feather-edit"></i>
															</a>
														</div>
													</td>
												</tr>
												<tr>
													<td>PRE1534</td>
													<td>
														<h2>
															<a>Acoustics</a>
														</h2>
													</td>
													<td>English</td>
													<td>Science</td>
													<td>10</td>
													<td>Book</td>
													<td>
														<span class="badge badge-success">In Stock</span>
													</td>
													<td class="text-end">
														<div class="actions">
															<a href="javascript:;" class="btn btn-sm bg-success-light me-2">
																<i class="feather-eye"></i>
															</a>
															<a href="edit-books.jsp" class="btn btn-sm bg-danger-light">
																<i class="feather-edit"></i>
															</a>
														</div>
													</td>
												</tr>
												<tr>
													<td>PRE2153</td>
													<td>
														<h2>
															<a>Robotics</a>
														</h2>
													</td>
													<td>English</td>
													<td>Science</td>
													<td>10</td>
													<td>Book</td>
													<td>
														<span class="badge badge-danger">Out of Stock</span>
													</td>
													<td class="text-end">
														<div class="actions">
															<a href="javascript:;" class="btn btn-sm bg-success-light me-2">
																<i class="feather-eye"></i>
															</a>
															<a href="edit-books.jsp" class="btn btn-sm bg-danger-light">
																<i class="feather-edit"></i>
															</a>
														</div>
													</td>
												</tr>
											</tbody>
										</table>
									</div>
								</div>
							</div>							
						</div>					
					</div>					
				</div>

		
	
		<!-- Datatables JS -->
		<script src="assets/plugins/datatables/datatables.min.js"></script>
		
	
	
<include page="../jsp/modules/footer.jsp"></include>
   