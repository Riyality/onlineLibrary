
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
													<th>BookId</th>
													<th>Title</th>
													<th>Author</th>
													 <th>Language </th>
													<th>ISBN</th>
													<th>Publisher</th>
													<th>Publisher City</th>
													<th>Publication Date</th>
													<th class="text-end">Action</th>
												</tr>
											</thead>
											<tbody>
											<c:forEach var="bk" items="${allBook }">>
												<tr>
												 <td>${bk.bookId}</td>
											        <td>${bk.title}</td>
											        <td>${bk.author}</td>
											        <td>${bk.language}</td>
											        <td>${bk.ISBN}</td>
											        <td>${bk.publisher}</td>
											        <td>${bk.publisherCity}</td>
											        <td>${bk.publicationDate}</td>
																								<!-- <td>
														<span class="badge badge-success">In Stock</span>
													</td> -->
													<!-- <td class="text-end">
													<div class="actions"> -->
 <%--  <a href="deleteBook?id=${bk.bookId}"><i class="material-icons" style="color:blue">delete</i></a>
  <a href="updateForm?BookId=${bk.bookId}&Title=${bk.title}&Author=${bk.author}&Language=${bk.language}&ISBN=${bk.ISBN}&publisher=${bk.publisher}&publisherCity=${bk.publisherCity}&publicationDate=${bk.publicationDate}"class="btn btn-sm bg-danger-light"><i class="feather-edit"></i></a> --%>
</div>
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
												</c:forEach>
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
   