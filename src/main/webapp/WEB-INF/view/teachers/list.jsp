
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
					<h3 class="page-title">Teachers</h3>
					<ul class="breadcrumb">
						<li class="breadcrumb-item"><a href="#">Teachers</a></li>
						<li class="active">/All</li>
					</ul>
				</div>
			</div>
		</div>
		<!-- /Page Header -->
		<div class="row justify-content-end mb-3">
			<div class="col-lg-3 col-md-4">
				<!-- Empty column for spacing, adjust width as needed -->
			</div>
			<div class="col-lg-3 col-md-4">
				<div class="form-group mb-0">
					<input type="text" class="form-control" id="contactNumberInput"
						placeholder="Search by ContactNo">
				</div>
			</div>
			<div class="col-lg-2 col-md-4">
				<div class="form-group mb-0">
					<button type="button" class="btn btn-primary w-100"
						onclick="searchContactNo()">Search</button>
				</div>
			</div>
		</div>



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
									
										<th>TeacherId</th>
										<th>TeacherName</th>
										<th>Email</th>
										<th>Contact Number</th>
										<th>Faculty</th>
										<th class="text-end">Action</th>
									</tr>
								</thead>
								<tbody>
									<!-- Loop through teacher objects -->
									<!-- Student data populated dynamically -->
									<c:if test="${not empty teacherList}">
										<c:forEach var="teacher" items="${teacherList}">
											<tr>
											
												<!-- Display teacher details -->
												<td>${teacher.teacherId}</td>
												<td>${teacher.firstName}${teacher.lastName}</td>
												<td>${teacher.email}</td>
												<td>${teacher.contactNumber}</td>
												<td>${teacher.faculty}</td>

												<!-- Actions column -->
												<td class="text-end">
													<div class="actions">

														<!-- Edit teacher button -->
														<a
															href="update?TeacherId=${teacher.teacherId}&FirstName=${teacher.firstName}&LastName=${teacher.lastName}
									&Email=${teacher.email}&ContactNumber=${teacher.contactNumber}&faculty=${teacher.faculty}"
															class="btn btn-sm bg-danger-light"> <i
															class="feather-edit"></i></a> <a
															class="btn btn-sm bg-danger-light" href="#"
															onclick="confirmDelete(${teacher.teacherId});"> <i
															class="feather-trash-2"></i>
														</a>
													</div>
												</td>
											</tr>
										</c:forEach>
									</c:if>
									<c:if test="${empty teacherList}">
										<tr>
											<td colspan="8" class="text-center">No teacher found</td>
										</tr>
									</c:if>
								</tbody>
							</table>
						</div>


						<script>
    function confirmDelete(teacherId) {
        if (confirm('Are you sure you want to delete this record?')) {
            window.location.href = 'delete?teacherId=' + teacherId;
        }
    }
</script>

    <!-- JavaScript code -->
   <script>
    function searchContactNo() {
        let filter = document.getElementById('contactNumberInput').value.trim();
        let tableRows = document.querySelectorAll('.datatable tbody tr');

        tableRows.forEach(row => {
            let cells = row.cells;
            let contactCell = cells[3]; // Assuming contact number is the fourth column (index 3)
            if (contactCell) {
                let contactText = contactCell.textContent || contactCell.innerText;
                if (contactText.includes(filter)) {
                    row.style.display = ""; // Show row if contact number matches filter
                } else {
                    row.style.display = "none"; // Hide row if contact number does not match filter
                }
            }
        });
    }
</script>





						<script src="/plugins/datatables/datatables.min.js"></script>

						<include page="../modules/footer.jsp"></include>




						<!-- Oracle Java Technologies | Oracle
http://java.sun.com
 -->