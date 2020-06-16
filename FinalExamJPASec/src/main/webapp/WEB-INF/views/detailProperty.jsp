<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<section>
		<div class="jumbotron">
			<div class="container">
				<h1>Detail Property</h1>
			</div>
		</div>
	</section>
	<section class="container">
		<form:form modelAttribute="property" action="edit" method="post">
			<fieldset>
				<legend>Detail property</legend>

				<form:errors path="*" element="div" />
				<div class="form-group">
					<label for="number">Property title</label>
					<div class="col-lg-10">
						<p>${property.description}</p>
					</div>
				</div>

				<div class="form-group">
					<label>Description</label>
					<div class="col-lg-10">
						<p>${property.description}</p>
					</div>
				</div>

				<div class="form-group">
					<label class="control-label col-lg-2" for="price">Price</label>
					<div class="col-lg-10">
						<div class="form:input-prepend">
							<form:input id="price" path="price" type="text" />
							<form:errors path="price" cssClass="text-danger" />
						</div>
					</div>
				</div>
			</fieldset>
			<%-- <input type="button" value="Add to favorite" <c:if test="${variable == false}"><c:out value="disabled='disabled'"/></c:if> onclick="addToFavorite()" /> --%>
			<input type="button"
				<c:if test="${LoggedInUser == false}"><c:out value="disabled='disabled'"/></c:if>
				value="add to favorite" onclick='alert(${LoggedInUser})' />
		</form:form>
	</section>
</body>
</html>