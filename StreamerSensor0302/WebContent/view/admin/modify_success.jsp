<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="root" value="${pageContext.request.contextPath }/" />
<script>
	alert('성공적으로 변경되었습니다.')
	location.href = '${root}member_profile?user_idx=${modifyMemberBean.user_idx}&user_id=${modifyMemberBean.user_id}';
</script>