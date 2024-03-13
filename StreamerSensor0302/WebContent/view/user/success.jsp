<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var='root' value='${pageContext.request.contextPath}/'/>
<script>
	alert('결제 되었습니다')
	location.href='${root}user/subscribe2?isSub=y&sales=3900'
</script>
