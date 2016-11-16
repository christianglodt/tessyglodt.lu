<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" session="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<jsp:useBean id="now" class="java.util.Date" scope="page" />
<!DOCTYPE html>
<html lang="lb">
<head>
<title>Blizzy</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=yes">
<meta name="theme-color" content="#018667">
<link rel="stylesheet" href="<c:url value='/resources/css/bootstrap.css' />">
<link rel="stylesheet" href="<c:url value='/resources/css/bootstrap-theme.css' />">
<link rel="stylesheet" href="<c:url value='/resources/css/unslider.css' />">
<link rel="stylesheet" href="<c:url value='/resources/css/unslider-dots.css' />">
<script type="text/javascript" src="<c:url value='/resources/js/jquery.min.js' />"></script>
<script type="text/javascript" src="<c:url value='/resources/js/jquery.validate.min.js' />"></script>
<script type="text/javascript" src="<c:url value='/resources/js/unslider-min.js' />"></script>
<style type="text/css">
.errors {
	border-color: red;
	background-color: #f9dede
}

h3 {
	color: #065949;
}

p {
	color: #018667;
	text-align: justify;
}
</style>
<c:if test="${fn:contains(pageContext.request.serverName, 'tessyglodt.lu')}">
	<script type="text/javascript">
		var _gaq = _gaq || [];
		_gaq.push([ '_setAccount', 'UA-29144750-1' ]);
		_gaq.push([ '_trackPageview' ]);
		(function() {
			var ga = document.createElement('script');
			ga.type = 'text/javascript';
			ga.async = true;
			ga.src = ('https:' == document.location.protocol ? 'https://ssl'
					: 'http://www')
					+ '.google-analytics.com/ga.js';
			var s = document.getElementsByTagName('script')[0];
			s.parentNode.insertBefore(ga, s);
		})();
	</script>
</c:if>
</head>
<body>

	<div class="row">
		<div class="col-xs-1"></div>
		<div class="col-xs-10">
			<div class="row">

				<div class="col-sm-8">
					<div class="row">
						<div class="col-sm-6">
							<h3>D’Déierewelt emol anescht…</h3>
							<p>Erzielunge voller Fantasie, déi e Bezug hunn zum Alldag -</p>
							<p>Zeechnungen, déi Gefiller net verstoppen a Froen inspiréieren -</p>
							<p>Momenter, déi animéiren sech an eng Situatioun eran ze versetzen -</p>
							<p>Naturléift an niewebäi duergestalten Hannergrond-Informatiounen -</p>
							<p>esou loosse sech di véier Geschichten aus dem Kannerbuch ‘Blizzy‘</p>
							<p>resuméieren. Se si kandgerecht illustréiert mat engem Hauch</p>
							<p>Nostalgie an s‘entféieren Kanner zur Entspanung a kleng imaginär Welten.</p>
						</div>
						<div class="col-sm-6">
							<h3>Un surprenant monde des animaux</h3>

							<p>Histoires pleines de fantaisie avec lien à la vie quotidienne -</p>
							<p>Illustrations faciles à interpréter inspirant des questions -</p>
							<p>Situations qui animent à partager des moments émouvants -</p>
							<p>Amour de la nature accompagné d’informations fondamentales -</p>
							<p>ces mots résument les quatre histoires du livre ‘Blizzy’ destiné aux</p>
							<p>enfants. La légère nostalgie des images emmène les petits à se</p>
							<p>détendre dans des mondes imaginaires.</p>
						</div>
					</div>
					<div class="row">
						<div class="col-sm-12">
							<div class="fading-slider text-center">
								<ul>
									<li><img src="<c:url value='/resources/b/p0.jpg' />"></li>
									<li><img src="<c:url value='/resources/b/p5.jpg' />"></li>
									<li><img src="<c:url value='/resources/b/p10.jpg' />"></li>
									<li><img src="<c:url value='/resources/b/p20.jpg' />"></li>
									<li><img src="<c:url value='/resources/b/p25.jpg' />"></li>
								</ul>
							</div>
						</div>
					</div>
				</div>
				<div class="col-sm-4">
					<h3>Bestellung / Commande</h3>

					<p>Wann dir d'Blizzy gäer bestellt da fëllt dëse Formulaire aus. Dir gidd duerno per Email kontaktéiert.</p>

					<p>Si vous voulez commander Blizzy, replissez ce formulaire. Vous serez ensuite contacté par email.</p>

					<form:form modelAttribute="order" method="post" action="${pageContext.request.contextPath}/blizzy" class="form-horizontal">

						<div class="form-group">
							<form:label path="title">Titel / Titre</form:label>
							<form:select path="title" cssClass="form-control">
								<form:option value="">[...]</form:option>
								<form:option value="MS">Madame</form:option>
								<form:option value="MR">Monsieur</form:option>
							</form:select>
						</div>

						<div class="form-group">
							<form:label path="lastName">Nonumm / Nom de famille</form:label>
							<form:input path="lastName" cssClass="form-control" />
						</div>

						<div class="form-group">
							<form:label path="firstName">Virnumm / Prénom</form:label>
							<form:input path="firstName" cssClass="form-control" />
						</div>

						<div class="form-group">
							<form:label path="email">Email</form:label>
							<form:input type="email" path="email" cssClass="form-control" />
						</div>

						<div class="form-group">
							<form:label path="houseNumber">Hausnummer / Numéro</form:label>
							<form:input path="houseNumber" cssClass="form-control" />
						</div>

						<div class="form-group">
							<form:label path="street">Strooss / Rue</form:label>
							<form:input path="street" cssClass="form-control" />
						</div>

						<div class="form-group">
							<form:label path="zipCode">Postleitzuel / Code postal</form:label>
							<form:input path="zipCode" cssClass="form-control" />
						</div>

						<div class="form-group">
							<form:label path="city">Uertschaft / Ville</form:label>
							<form:input path="city" cssClass="form-control" />
						</div>

						<div class="form-group">
							<form:label path="country">Land / Pays</form:label>
							<form:select path="country" cssClass="form-control">
								<form:option value="">[...]</form:option>
								<form:option value="lu">Lëtzebuerg / Luxembourg</form:option>
								<form:option value="be">Belsch / Belgique</form:option>
								<form:option value="de">Däitschland / Allemagne</form:option>
								<form:option value="fr">Frankräich / France</form:option>
							</form:select>
						</div>

						<div class="form-group">
							<form:label path="orderCopies">Exemplairen / Exemplaires</form:label>
							<form:input type="number" path="orderCopies" cssClass="form-control" min="0" max="10" />
						</div>

						<div class="form-group">
							<div class="col-xs-6">
								<button type="submit" class="btn btn-primary">Bestellen / Commander</button>
							</div>
						</div>
					</form:form>
				</div>

			</div>
		</div>
		<div class="col-xs-1"></div>
	</div>

	<script type="text/javascript">
		$(document).ready(function() {

			$(".fading-slider").unslider({
				autoplay : true,
				nav : false,
				arrows : false
				//animation : "fade"
			});

			$("h1,h3").click(function() {
				$("#title").val("MS");
				$("#lastName").val("Schmidt");
				$("#firstName").val("Marie-Gelatine");
				$("#email").val("yg@mind.lu");
				$("#houseNumber").val("54");
				$("#street").val("rue de la Gare");
				$("#zipCode").val("1419");
				$("#city").val("Luxembourg");
				$("#country").val("lu");
				$("#orderCopies").val("2");
			});

			$("#order").validate({
				rules : {
					title : "required",
					lastName : "required",
					firstName : "required",
					email : {
						required : true,
						email : true
					},
					houseNumber : "required",
					street : "required",
					zipCode : "required",
					city : "required",
					country : "required",
					orderCopies : "required"
				},
				errorClass : "errors",
				errorPlacement : function(error, element) {
					return true;
				}
			});

		});
	</script>

</body>
</html>
