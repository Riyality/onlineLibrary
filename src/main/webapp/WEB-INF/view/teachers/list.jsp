
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
								<h3 class="page-title">Teachers</h3>
								<ul class="breadcrumb">
									<li class="breadcrumb-item"><a href="index.jsp">Dashboard</a></li>
									<li class="breadcrumb-item active">Teachers</li>
								</ul>
							</div>
						</div>
					</div>
					<!-- /Page Header -->
					
					<div class="student-group-form">
						<div class="row">
							<div class="col-lg-3 col-md-6">  
								<div class="form-group">
									<input type="text" class="form-control" placeholder="Search by ID ...">
								</div>
							</div>
							<div class="col-lg-3 col-md-6">  
								<div class="form-group">
									<input type="text" class="form-control" placeholder="Search by Name ...">
								</div>
							</div>
							<div class="col-lg-4 col-md-6">  
								<div class="form-group">
									<input type="text" class="form-control" placeholder="Search by Phone ...">
								</div>
							</div>
							<div class="col-lg-2">  
								<div class="search-student-btn">
									<button type="btn" class="btn btn-primary">Search</button>
								</div>
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
											<div class="col">
												<h3 class="page-title">Teachers</h3>
											</div>
											<div class="col-auto text-end float-end ms-auto download-grp">
												<a href="teachers.jsp" class="btn btn-outline-gray me-2 active"><i class="feather-list"></i></a>
												<a href="teachers-grid.jsp" class="btn btn-outline-gray me-2"><i class="feather-grid"></i></a>
												<a href="#" class="btn btn-outline-primary me-2"><i class="fas fa-download"></i> Download</a>
												<a href="add-teacher.jsp" class="btn btn-primary"><i class="fas fa-plus"></i></a>
											</div>
										</div>
									</div>
									<!-- /Page Header -->
							<div class="table-responsive">
        <table class="table border-0 star-student table-hover table-center mb-0 datatable table-striped">
            <thead class="student-thread">
                <tr>
                    <th>
                        <div class="form-check check-tables">
                            <input class="form-check-input" type="checkbox" value="selectAll">
                        </div>
                    </th>
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
                        <td>
                            <div class="form-check check-tables">
                                <input class="form-check-input" type="checkbox" value="${teacher.teacherId}">
                            </div>
                        </td>
                        <!-- Display teacher details -->
                        <td>${teacher.teacherId}</td>
                        <td>${teacher.firstName} ${teacher.lastName}</td>
                        <td>${teacher.email}</td>
                        <td>${teacher.contactNumber}</td>
                        <td>${teacher.faculty}</td>
                        
                        <!-- Actions column -->
                        <td class="text-end">
                            <div class="actions">
                                <!-- View teacher details button -->
                                <a href="viewTeacher.jsp?teacherId=${teacher.teacherId}" class="btn btn-sm bg-success-light me-2">
                                    <i class="feather-eye"></i>
                                </a>
                                <!-- Edit teacher button -->
                               <a href="update?TeacherId=${teacher.teacherId}&FirstName=${teacher.firstName}&LastName=${teacher.lastName}
									&Email=${teacher.email}&ContactNumber=${teacher.contactNumber}&faculty=${teacher.faculty}"class="btn btn-sm bg-danger-light">
									<i class="feather-edit"></i></a> 
									
                                <a  class="btn btn-sm bg-danger-light" href="#" onclick="confirmDelete(${teacher.teacherId});">
                                     <i class="feather-trash-2"></i>
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


											

			
		<script src="/plugins/datatables/datatables.min.js"></script>
	
<include page="../modules/footer.jsp"></include>
  



<!-- Oracle Java Technologies | Oracle
http://java.sun.com
 -->
  