<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
	<div class="container">
		<div class="collapse navbar-collapse" id="navbarNav">
		<c:url value="/students" var="student"></c:url>
		<c:url value="/batches" var="batch"></c:url>
			<ul class="navbar-nav">
				<li class="nav-item">
					<a class="nav-link  ${empty title ? 'active' : '' }" aria-current="page" href="<%= request.getContextPath() %>">Home</a>
				</li>
				<li class="nav-item">
					<a class="nav-link  ${ title eq 'Batch' ? 'active' : '' }" href="${batch}">Batch</a>
				</li>
				<li class="nav-item">
					<a class="nav-link ${title eq 'Student' or title eq 'Student Add' ? 'active' : '' }" href="${student}">Student</a></li>
			</ul>
		</div>
	</div>
</nav>