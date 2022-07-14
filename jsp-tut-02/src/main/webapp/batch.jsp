<%@page import="java.util.ArrayList"%>
<%@page import="com.mmit.entity.Batch"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Batch</title>
<jsp:include page="common/res.jsp"></jsp:include>
</head>
<body>
<!-- nav -->
	<jsp:include page="common/nav.jsp"></jsp:include>
	
	<div class="container">
			<form action="" class="form" method="post">
				<div class="row mt-2 pt-2">
					<div class="col-4">
						<div class="mb-3">
							<label for="" class="form-label">Batch Name</label>
							<input type="text" class="form-control" name ="batch"/>
						</div>
						<div class="mb-3">
							<label for="" class="form-label">Start Date</label>
							<input type="Date" class="form-control" name ="start_date"/>
						</div>
						<div class="row mt-4">
							<div class="row">
								<div class="col-6">
									<button class="btn btn-danger w-100" type="submit">Create</button>
								</div>
								<div class="col-6">
									<button class="btn btn-primary w-100" type="reset">Reset</button>
								</div>
							</div>
						</div>
					</div>
				<div class="col-8">
					<h3>Batch List</h3>
					<table class="table">
					<thead>
						<tr>
							<th>Batch Name</th>
							<th>Start Date</th>
						</tr>
					</thead>
					<tbody>
					<!-- batch list -->
						<%
							List<Batch> list = (ArrayList<Batch>) application.getAttribute("batches");
							if(list == null){
								list = new ArrayList<>();
							}
							
							for(Batch b : list){
								%>
								<tr>
									<td><%= b.getName() %></td>
									<td><%= b.getStart_date() %></td>
								</tr>
								<%
							}
						%>
						
					</tbody>
				</table>
				
			</div>
		</div>				
	</form>
</div>
	
	<!-- footer -->
	<jsp:include page="common/footer.jsp"></jsp:include>
</body>
</html>