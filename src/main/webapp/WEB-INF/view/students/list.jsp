<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<jsp:include page="../modules/header.jsp" />
<%@ page isELIgnored="false"%>

<div class="page-wrapper">
    <div class="content container-fluid">
        <div class="page-header">
            <div class="row">
                <div class="col-sm-12">
                    <div class="page-sub-header">
                        <h3 class="page-title">Students</h3>
                        <ul class="breadcrumb">
                            <li class="breadcrumb-item"><a href="">Students</a></li>
                            <li class="active">/All</li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>

        <!-- Search Bar -->
        <div class="row justify-content-end mb-3">
            <div class="col-lg-3 col-md-4">
                <!-- Empty column for spacing, adjust width as needed -->
            </div>
            <div class="col-lg-3 col-md-4">
                <div class="form-group mb-0">
                    <input type="text" class="form-control" id="contactNumberInput" placeholder="Search by ContactNo">
                </div>
            </div>
            <div class="col-lg-2 col-md-4">
                <div class="form-group mb-0">
                    <button type="button" class="btn btn-primary w-100" onclick="searchContactNo()">Search</button>
                </div>
            </div>
        </div>

        <!-- Students Table -->
        <div class="row">
            <div class="col-sm-12">
                <div class="card card-table comman-shadow">
                    <div class="card-body">
                        <div class="page-header">
                            <div class="row align-items-center">
                                <div class="col-auto text-end float-end ms-auto download-grp">
                                    <a href="#" class="btn btn-outline-primary me-2 d-none"><i
                                            class="fas fa-download"></i> Download</a>
                                    <a href="add-form" class="btn btn-primary"><i class="fas fa-plus"></i></a>
                                </div>
                            </div>
                        </div>

                        <!-- Table Structure -->
                        <div class="table-responsive">
                            <table class="table border-0 star-student table-hover table-center mb-0 datatable table-striped">
                                <thead class="student-thread">
                                    <tr>
                                        <th>StudentId</th>
                                        <th>StudentName</th>
                                        <th>Email</th>
                                        <th>ClassName</th>
                                        <th>Department</th>
                                        <th>ContactNumber</th>
                                        <th class="text-end">Action</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <!-- Student data populated dynamically -->
                                    <c:if test="${not empty studentList}">
                                        <c:forEach var="student" items="${studentList}">
                                            <tr>
                                                <td>${student.studentId}</td>
                                                <td>${student.firstName} ${student.lastName}</td>
                                                <td>${student.email}</td>
                                                <td>${student.className}</td>
                                                <td>${student.department}</td>
                                                <td>${student.contactNumber}</td>
                                                <td class="text-end">
                                                    <div class="actions">
                                                        <a href="update?studentId=${student.studentId}&firstName=${student.firstName}&lastName=${student.lastName}&email=${student.email}&className=${student.className}&department=${student.department}&contactNumber=${student.contactNumber}"
                                                            class="btn btn-sm bg-danger-light"><i
                                                                class="feather-edit"></i> </a>
                                                        <a class="btn btn-sm bg-danger-light" href="#"
                                                            onclick="confirmDelete(${student.studentId});"><i
                                                                class="feather-trash-2"></i></a>
                                                    </div>
                                                </td>
                                            </tr>
                                        </c:forEach>
                                    </c:if>
                                    <c:if test="${empty studentList}">
                                        <tr>
                                            <td colspan="8" class="text-center">No students found</td>
                                        </tr>
                                    </c:if>
                                </tbody>
                            </table>
                        </div>

                        <!-- Edit Student Modal -->
                        <div class="modal fade" id="editStudentModal" tabindex="-1" role="dialog"
                            aria-labelledby="editStudentModalLabel" aria-hidden="true">
                            <div class="modal-dialog modal-dialog-centered" role="document">
                                <div class="modal-content">
                                    <div class="modal-header">
                                        <h5 class="modal-title" id="editStudentModalLabel">Edit Student</h5>
                                        <button type="button" class="close" data-dismiss="modal"
                                            aria-label="Close">
                                            <span aria-hidden="true">&times;</span>
                                        </button>
                                    </div>
                                    <div class="modal-body">
                                        <!-- Form for editing student details -->
                                        <form id="editStudentForm">
                                            <!-- Input fields for editing student details -->
                                            <input type="hidden" id="editStudentId" name="StudentId">
                                            <div class="form-group">
                                                <label for="editFirstName">First Name</label>
                                                <input type="text" class="form-control" id="editFirstName"
                                                    name="FirstName" ${student.firstName}>
                                            </div>
                                            <div class="form-group">
                                                <label for="editLastName">Last Name</label>
                                                <input type="text" class="form-control" id="editLastName"
                                                    name="LastName" ${student.lastName}>
                                            </div>
                                            <div class="form-group">
                                                <label for="editEmail">Email</label>
                                                <input type="email" class="form-control" id="editEmail" name="Email"
                                                    ${student.email}>
                                            </div>
                                            <div class="form-group">
                                                <label for="editContactNumber">Contact Number</label>
                                                <input type="text" class="form-control" id="editContactNumber"
                                                    name="ContactNumber" ${student.contactNumber}>
                                            </div>
                                            <!-- Button to submit form -->
                                            <button type="submit" class="btn btn-primary">Save Changes</button>
                                        </form>
                                    </div>
                                </div>
                            </div>
                        </div>

                    </div>
                </div>
            </div>
        </div>
    </div>

    <script>
        function confirmDelete(studentId) {
            if (confirm('Are you sure you want to delete this record?')) {
                window.location.href = 'delete?studentId=' + studentId;
            }
        }
    </script>

    <script>
        function searchContactNo() {
            let filter = document.getElementById('contactNumberInput').value.trim();
            let tableRows = document.querySelectorAll('.datatable tbody tr');

            tableRows.forEach(row => {
                let cells = row.cells;
                let contactCell = cells[5]; // Assuming contact number is the sixth column (index 5)
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

    <jsp:include page="../modules/footer.jsp"></jsp:include>
</div>
