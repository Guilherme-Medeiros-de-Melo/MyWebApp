<%@ include file="common/header.jspf"%>
<%@ include file="common/navigation.jspf"%>

<div class="container">
	<div>Your Todos are:</div>
	<table class="table">
		<thead>
			<tr>
				<th>Id</th>
				<th>Desc</th>
				<th>Date</th>
				<th>Done</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach items="${todos}" var="todo">
				<tr>
					<td>${todo.id}</td>
					<td>${todo.description}</td>
					<td>${todo.targetDate}</td>
					<td>${todo.iscomplete}</td>
					<td><a href="update-todo?id=${todo.id}"
						class="btn btn-success">UPDATE</a></td>
					<td><a href="delete-todo?id=${todo.id}"
						class="btn btn-warning">DELETE</a></td>
				</tr>
			</c:forEach>
		</tbody>
	</table>
	<a href="add-todo" class="btn btn-success">Add Todo</a>
	<script src="webjars/bootstrap/5.1.3/js/bootstrap.min.js"></script>
	<script src="webjars/jquery/3.6.0/jquery.min.js"></script>
</div>

<%@ include file="common/footer.jspf"%>
