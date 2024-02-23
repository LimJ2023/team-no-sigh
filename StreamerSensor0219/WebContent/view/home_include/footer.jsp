<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var='root' value="${pageContext.request.contextPath }/"/> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<link rel="stylesheet" href="${root }home/footer.css" />

<body>

	<footer class="footer">
		<div class="footerContainer">
			<div class="footerRow">
				<div class="footerCol footerCol1">
					<h2>STREAMER SENSOR</h2>
					<p>Where you can find your Streamer <a href="admin">.</a></p>
				</div>
				<div class="footerCol footerCol2">
					<ul>
						<li><a href="#">About Us</a></li>
						<li><a href="#">Privacy Policy</a></li>
						<li><a href="#">Q&A</a></li>
					</ul>
				</div>
				<div class="footerCol footerCol2">
					<div class="linkIcons">
						<a href="#"><img src="${root }img/logo/facebook_logo_black.png"
							class="footerIcon f_facebookLogo"></a> <a href="#"><img
							src="${root }img/logo/instagram_logo_black.png"
							class="footerIcon f_facebookLogo"></a> <a href="#"><img
							src="${root }img/logo/youube_logo_black.png"
							class="footerIcon f_facebookLogo"></a> <a href="#"><img
							src="${root }img/logo/x_logo_black.png" class="footerIcon f_facebookLogo"></a>
					</div>
				</div>
			</div>
		</div>

	</footer>

</body>
</html>