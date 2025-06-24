<%@ include file="common/header.jspf"%>
<%@ include file="common/navigation.jspf"%>

<div class="container">
	<div>Update todo:</div>
	<form:form method="post" modelAttribute="todo">
				Id			<form:input disabled="true" type="text" path="id"
			required="required" />
		<p>
		<p>
			Description:
			<form:input type="text" path="description" required="required" />
		<p>
			Username:
			<form:input type="text" path="username" required="required" />
		<p>
			<fieldset class="mb-3">
				<form:label path="targetDate">Target Date:</form:label>
				<form:input type="text" path="targetDate" required="required" />
				<form:errors path="targetDate" cssClass="text-warning" />
		</fieldset>
		<p>
			isComplete:
			<form:input type="text" path="iscomplete" required="required" />
			<form:errors path="description" cssClass="text-warning" />
			<form:input type="hidden" path="id" />
		<form:input type="hidden" path="iscomplete" />
		<p>
			<input type="submit" class="btn btn-success" value="Update Todo"/>
	</form:form>
</div>

<%@ include file="common/footer.jspf"%>
<script type="text/javascript">
	$('#targetDate').datepicker({
		format : 'yyyy-mm-dd'
	});
</script>
