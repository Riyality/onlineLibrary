
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
								<h3 class="page-title">Book History</h3>
								<ul class="breadcrumb">
									<li class="breadcrumb-item"><a href="#">Book</a></li>
									<li class=" active">/History</li>
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
											<div class="col-auto text-end float-end ms-auto download-grp">
												<a href="#" class="btn btn-outline-primary me-2 d-none"><i class="fas fa-download "></i> Download</a>
												<a href="addBorrowForm" class="btn btn-primary"><i class="fas fa-plus"></i></a>
											</div>
										</div>
									</div>
									
									
									
									
									<!-- /Page Header -->
									<div class="table-responsive">
										<table class="table border-0 star-student table-hover table-center mb-0 datatable table-striped">
											<thead class="student-thread">
												<tr>
												   <th>Id</th>
													<th>BookId</th>
													<th>Student Name</th>
													<th>Issue Date</th>
													 <th>Due Date </th>
											
												</tr>
											</thead>
											<tbody>
											<c:forEach var="book" items="${BookHistory }">
												<tr>
												    <td>${book.id}</td>
												    <td>${book.bookId}</td>
											        <td>${book.studentName}</td>
											        <td>${book.issueDate}</td>
											        <td>${book.dueDate}</td>
											        
													
													
												</tr>
												</c:forEach>
											</tbody>
										</table>
									</div>
								</div>
							</div>							
						</div>					
					</div>					
				</div>
				</div>

		
	
		<!-- Datatables JS -->
		<script src="assets/plugins/datatables/datatables.min.js"></script>
		
	
	
		<include page="../modules/footer.jsp"></include>   
