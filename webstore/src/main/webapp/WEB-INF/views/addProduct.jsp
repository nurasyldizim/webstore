<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>


<html>
<head>
<meta http-equiv="Content-Type" content="text/html;
charset=ISO-8859-1">
<link rel="stylesheet"
	href="//netdna.bootstrapcdn.com/bootstrap/3.0.0/css/
bootstrap.min.css">
<title><spring:message code="title.Products.label" /></title>
</head>
<body>
	<section>
		<div class="jumbotron">
			<div class="container">
				<h1>
					<spring:message code="h1.Products.label" />
				</h1>
				<p>
					<spring:message code="p.AddProducts.label" />
				</p>
			</div>
		</div>
	</section>
	<section class="container">
		<form:form method="POST" modelAttribute="newProduct"
			enctype="multipart/form-data" class="form-horizontal">
			<fieldset>
				<legend>
					<spring:message code="legend.AddNewProducts.label" />
				</legend>
				<div class="form-group">

					<label class="control-label col-lg-2 col-lg-2" for="productId"><spring:message
							code="addProduct.form.productId.label" /></label>
					<div class="col-lg-10">
						<form:input id="productId" path="productId" type="text"
							class="form:input-large" />
					</div>
				</div>
				<div class="form-group">
					<label class="control-label col-lg-2 col-lg-2" for="name"><spring:message
							code="addProduct.form.name.label" /></label>
					<div class="col-lg-10">
						<form:input id="name" path="name" type="text"
							class="form:input-large" />
					</div>
				</div>

				<div class="form-group">
					<label class="control-label col-lg-2 col-lg-2" for="manufacturer"><spring:message
							code="addProduct.form.manufacturer.label" /></label>
					<div class="col-lg-10">
						<form:input id="manufacturer" path="manufacturer" type="text"
							class="form:input-large" />
					</div>
				</div>
				<div class="form-group">
					<label class="control-label col-lg-2 col-lg-2" for="category"><spring:message
							code="addProduct.form.category.label" /></label>
					<div class="col-lg-10">
						<form:input id="category" path="category" type="text"
							class="form:input-large" />
					</div>
				</div>
				<div class="form-group">
					<label class="control-label col-lg-2 col-lg-2" for="inStock"><spring:message
							code="addProduct.form.unitsInStock.label" /></label>
					<div class="col-lg-10">
						<form:input id="inStock" path="unitsInStock" type="text"
							class="form:input-large" />
					</div>
				</div>

				<div class="form-group">
					<label class="control-label col-lg-2" for="description"><spring:message
							code="addProduct.form.description.label" /></label>
					<div class="col-lg-10">
						<form:textarea id="description" path="description" rows="2" />
					</div>
				</div>




				<div class="form-group">
					<label class="control-label col-lg-2" for="condition"><spring:message
							code="addProduct.form.condition.label" /></label>
					<div class="col-lg-10">
						<spring:message code="addProduct.form.New.label" var="New" />
						<form:radiobutton path="condition" value="${New}" />${New}
						<spring:message code="addProduct.form.Old.label" var="Old" />
						<form:radiobutton path="condition" value="${Old}" />${Old}
						<spring:message code="addProduct.form.Refurbished.label"
							var="Refurbished" />
						<form:radiobutton path="condition" value="${Refurbished}" />${Refurbished}
					</div>
				</div>
				<div class="form-group">
					<label class="control-label col-lg-2" for="productImage"> <spring:message
							code="addProduct.form.productImage.label" />
					</label>
					<div class="col-lg-10">
						<form:input id="productImage" path="productImage" type="file"
							class="form:input-large" />
					</div>
				</div>
				<div class="form-group">
					<div class="col-lg-offset-2 col-lg-10">
						<spring:message code="addProduct.form.Add.label" var="Add" />
						<input type="submit" id="btnAdd" class="btn btn-primary"
							value="${Add}" />
					</div>
				</div>
			</fieldset>

		</form:form>
	</section>
</body>
</html>