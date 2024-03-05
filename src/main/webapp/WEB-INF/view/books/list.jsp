<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<jsp:include page="../modules/header.jsp" />

<!-- Rest of your JSP page content goes here -->
<%@ page isELIgnored="false"%>

<!-- Page Wrapper -->
<div class="page-wrapper">
	<div class="content container-fluid">

		<!-- Page Header -->
		<div class="page-header">
			<div class="row align-items-center">
				<div class="col">
					<h3 class="page-title">Books</h3>
					<ul class="breadcrumb">
						<li class="breadcrumb-item"><a href="#">Books</a></li>
						<li class="active">/All</li>
					</ul>
				</div>
			</div>
			<div class="student-group-form">
				<div class="row justify-content-end">
					<div class="col-lg-4 col-md-6">
						<div class="form-group">
							<input type="text" class="form-control" id="titleInput"
								placeholder="Search by Title...">
						</div>
					</div>
					<div class="col-lg-2 col-md-6">
						<div class="search-student-btn">
							<button type="button" class="btn btn-primary w-100"
								onclick="searchBooks()">Search</button>
						</div>
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
										<a href="#" class="btn btn-outline-primary me-2 d-none"><i
											class="fas fa-download"></i> Download</a> <a href="add-form"
											class="btn btn-primary"><i class="fas fa-plus"></i></a>
									</div>
								</div>
							</div>




							<!-- /Page Header -->
							<div class="table-responsive">
								<table
									class="table border-0 star-student table-hover table-center mb-0 datatable table-striped">
									<thead class="student-thread">
										<tr>
											<th>BookId</th>
											<th>Title</th>
											<th>Author</th>
											<th>Language</th>
											<th>ISBN</th>
											<th>Publisher</th>
											<th>Publisher City</th>
											<th>Publication Date</th>
											<th class="text-end">Action</th>
										</tr>
									</thead>
									<tbody>
										<c:forEach var="bk" items="${allBook }">
											<tr>
												<td>${bk.bookId}</td>
												<td>${bk.title}</td>
												<td>${bk.author}</td>
												<td>${bk.language}</td>
												<td>${bk.ISBN}</td>
												<td>${bk.publisher}</td>
												<td>${bk.publisherCity}</td>
												<td>${bk.publicationDate}</td>
												</div>
												</td>

												<td class="text-end">
													<div class="actions">
														<a
															href="update?BookId=${bk.bookId}&Title=${bk.title}&Author=${bk.author}&Language=${bk.language}&ISBN=${bk.ISBN}&Publisher=${bk.publisher}&PublisherCity=${bk.publisherCity}
															&PublicationDate=${bk.publicationDate}"
															class="btn btn-sm bg-danger-light"><i
															class="feather-edit"></i></a> <a
															class="btn btn-sm bg-danger-light" href="#"
															onclick="confirmDelete(${bk.bookId});"> <i
															class="feather-trash-2"></i>
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

		<script>
    function confirmDelete(bookId) {
        if (confirm('Are you sure you want to delete this record?')) {
            window.location.href = 'delete?bookId=' + bookId;
        }
    }
</script>


		<script>
    function searchBooks() {
        let filter = document.getElementById('titleInput').value.trim().toLowerCase();
        let tableRows = document.querySelectorAll('.datatable tbody tr');

        tableRows.forEach(row =>{
            let titleCell = row.cells[1]; // Assuming "Title" is the second column
            if (titleCell) {
                let titleText = titleCell.textContent || titleCell.innerText;
                titleText = titleText.toLowerCase();
                if (titleText.indexOf(filter) > -1) {
                    row.style.display = "";
                } else {
                    row.style.display = "none";
                }
            }
        });
    }
</script>

		<!-- Datatables JS -->
		<script
			src="<c:url value="resources/assets/plugins/datatables/datatables.min.js"/>"></script>



		<include page="../modules/footer.jsp"></include>