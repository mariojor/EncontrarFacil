<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page language="java" import="java.util.*"%>
<%@page contentType="text/html; charset=UTF-8"%>
<%@page isELIgnored="false"%>
<%@page session="true"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>ProjetoPessoal</title>
	<link rel="stylesheet" type="text/css" href="<c:url value="/css/estilo.css"/>">
	<link rel="stylesheet" type="text/css" href="<c:url value="/css/bootstrap.css"/>">
	<script src="<c:url value="/js/bootstrap.js"/>"></script>
	<script src="<c:url value="/js/jquery.js"/>"></script>
	<script src="<c:url value="/js/scripts.js"/>"></script>
</head>
<body>

	<div class="container">
		<form class="well form-horizontal" action="cadastroDeFuncionario"
			method="post" id="contact_form">
			<fieldset>

				<!-- Form Name -->
				<legend>Contact Us Today!</legend>

				<!-- Text input-->

				<div class="form-group">
					<label class="col-md-4 control-label">First Name</label>
					<div class="col-md-4 inputGroupContainer">
						<div class="input-group">
							<span class="input-group-addon">
								<i class="glyphicon glyphicon-user"></i>
							</span> 
							<input name="first_name" placeholder="First Name" class="form-control" type="text">
						</div>
					</div>
				</div>

				<!-- Text input-->

				<div class="form-group">
					<label class="col-md-4 control-label">Last Name</label>
					<div class="col-md-4 inputGroupContainer">
						<div class="input-group">
							<span class="input-group-addon">
								<i class="glyphicon glyphicon-user"></i>
							</span> 
							<input name="last_name" placeholder="Last Name" class="form-control" type="text">
						</div>
					</div>
				</div>

				<!-- Text input-->
				<div class="form-group">
					<label class="col-md-4 control-label">E-Mail</label>
					<div class="col-md-4 inputGroupContainer">
						<div class="input-group">
							<span class="input-group-addon">
								<i class="glyphicon glyphicon-envelope"></i>
							</span> 
							<input name="email" placeholder="E-Mail Address" class="form-control" type="text">
						</div>
					</div>
				</div>


				<!-- Text input-->

				<div class="form-group">
					<label class="col-md-4 control-label">Phone #</label>
					<div class="col-md-4 inputGroupContainer">
						<div class="input-group">
							<span class="input-group-addon">
								<i class="glyphicon glyphicon-earphone"></i>
							</span> 
							<input name="phone" placeholder="(845)555-1212" class="form-control" type="text">
						</div>
					</div>
				</div>

				<!-- Text input-->

				<div class="form-group">
					<label class="col-md-4 control-label">Address</label>
					<div class="col-md-4 inputGroupContainer">
						<div class="input-group">
							<span class="input-group-addon">
								<i class="glyphicon glyphicon-home"></i>
							</span> 
							<input name="address" placeholder="Address" class="form-control" type="text">
						</div>
					</div>
				</div>

				<!-- Text input-->

				<div class="form-group">
					<label class="col-md-4 control-label">City</label>
					<div class="col-md-4 inputGroupContainer">
						<div class="input-group">
							<span class="input-group-addon">
								<i class="glyphicon glyphicon-home"></i>
							</span> 
							<input name="city" placeholder="city" class="form-control" type="text">
						</div>
					</div>
				</div>

				<!-- Select Basic -->

				<div class="form-group">
					<label class="col-md-4 control-label">State</label>
					<div class="col-md-4 selectContainer">
						<div class="input-group">
							<span class="input-group-addon">
								<i class="glyphicon glyphicon-list"></i>
							</span> 
							<select name="state" class="form-control selectpicker">
								<option value=" ">Please select your state</option>
								<!-- falta lista -->
							</select>
						</div>
					</div>
				</div>

				<!-- Text input-->

				<div class="form-group">
					<label class="col-md-4 control-label">Zip Code</label>
					<div class="col-md-4 inputGroupContainer">
						<div class="input-group">
							<span class="input-group-addon">
								<i class="glyphicon glyphicon-home"></i>
							</span>
							<input name="zip" placeholder="Zip Code" class="form-control" type="text">
						</div>
					</div>
				</div>

				<!-- Text input-->
				<div class="form-group">
					<label class="col-md-4 control-label">Website or domain
						name</label>
					<div class="col-md-4 inputGroupContainer">
						<div class="input-group"> <span class="input-group-addon">
							<i class="glyphicon glyphicon-globe"></i>
						</span>
						 <input name="website" placeholder="Website or domain name" class="form-control" type="text">
						</div>
					</div>
				</div>

				<!-- radio checks -->
				<div class="form-group">
					<label class="col-md-4 control-label">Do you have hosting?</label>
					<div class="col-md-4">
						<div class="radio">
							<label> <input type="radio" name="hosting" value="yes" />
								Yes
							</label>
						</div>
						<div class="radio">
							<label> <input type="radio" name="hosting" value="no" />
								No
							</label>
						</div>
					</div>
				</div>

				<!-- Text area -->

				<div class="form-group">
					<label class="col-md-4 control-label">Project Description</label>
					<div class="col-md-4 inputGroupContainer">
						<div class="input-group">
							<span class="input-group-addon">
								<i class="glyphicon glyphicon-pencil"></i>
							</span>
							<textarea class="form-control" name="comment" placeholder="Project Description"></textarea>
						</div>
					</div>
				</div>

				<!-- Success message -->
				<div class="alert alert-success" role="alert" id="success_message">
					Success <i class="glyphicon glyphicon-thumbs-up"></i> Thanks for
					contacting us, we will get back to you shortly.
				</div>

				<!-- Button -->
				<div class="form-group">
					<label class="col-md-4 control-label"></label>
					<div class="col-md-4">
						<button type="submit" class="btn btn-warning">
							Send <span class="glyphicon glyphicon-send"></span>
						</button>
					</div>
				</div>

			</fieldset>
		</form>
	</div>

</body>
</html>