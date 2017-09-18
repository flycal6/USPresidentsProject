<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
 <meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

<!-- Bootstrap CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/css/bootstrap.min.css" integrity="sha384-/Y6pD6FV/Vv2HJnA6t+vslU6fwYXjCFtcEpHbNJ0lyAFsXTsjBbfaDjzALeQsN6M" crossorigin="anonymous">
<link rel = "icon" type = "favicon" href = "https://cdn1.iconfinder.com/data/icons/rounded-flat-country-flag-collection-1/2000/us-01.png">
<link rel = "stylesheet" type = "text/css" href = "css/styles.css" />
<style>
<c:choose>
	<c:when test="${currentPres.termNum == numPres}">
		#nextButton {
			visibility: hidden;
		}
	</c:when>
	<c:otherwise>
		#nextButton{
			display: block;
		}
	</c:otherwise>
</c:choose>
<c:choose>
	<c:when test="${currentPres.termNum == 1}">
		#previousButton {
			visibility: hidden;
		}
	</c:when>
	<c:otherwise>
		#previousButton{
			display: block;
		}
	</c:otherwise>
</c:choose>
</style>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>${currentPres.fName} ${currentPres.midName} ${currentPres.lName}</title>
</head>
<body>
<div id="sweetEagle">
<img src="https://i.pinimg.com/736x/34/f5/fd/34f5fd03df34a42f2edbeab5a10ed98c--flag-tattoos-american-eagle-tattoo.jpg">
</div>
<br><br><br><br><br><br>
<div class="main">
<h1>${currentPres.fName} ${currentPres.midName} ${currentPres.lName}</h1>
<div class="presImgContainer">
<img class="presImage image-blurred-edge" src="${currentPres.image }" />
</div>
<h3>${currentPres.party}</h3>
<h4> ${currentPres.startYear} -  ${currentPres.endYear}</h4>

<form action = "gotopres.do" method="POST">
	Enter President Number: <input id="number" type="number" name ="Number" min=1 max="${numPres}">
	<input type="submit" name="submit" value="Submit">
</form>
<form action="grabapres.do" method="POST">

<input id="previousButton" type="submit" name="next" value="Previous">

<input id="nextButton" type="submit" name="next" value="Next">
</form>
<hr>
<p>${currentPres.fact}</p>

</div>

<!-- Optional JavaScript -->
<!-- jQuery first, then Popper.js, then Bootstrap JS -->
<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.11.0/umd/popper.min.js" integrity="sha384-b/U6ypiBEHpOf/4+1nzFpr53nxSS+GLCkfwBdFNTxtclqqenISfwAzpKaMNFNmj4" crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/js/bootstrap.min.js" integrity="sha384-h0AbiXch4ZDo7tp9hKZ4TsHbi047NrKGLO3SEJAg45jXxnGIfYzk4Si90RDIqNm1" crossorigin="anonymous"></script>	
</body>
</html>