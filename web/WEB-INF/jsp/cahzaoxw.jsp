<%@ page language="java" import="java.util.*" pageEncoding="GBK"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=GBK" />
<title>������̨</title>
<link href="${pageContext.request.contextPath}/css/admin.css" rel="stylesheet" type="text/css" />
</head>
<body>
<div id="header">
	<div id="welcome">��ӭʹ�����Ź���ϵͳ��</div>
    <div id="nav">
    	<div id="logo"><img src="${pageContext.request.contextPath}/images/logo.jpg" alt="�����й�" /></div>
        <div id="a_b01"><img src="${pageContext.request.contextPath}/images/a_b01.gif" alt="����Ƶ��" /></div>
    </div>
</div>

<div id="admin_bar">
    <div id="status">
        <c:if test="${uname eq null}">
            <form id="login" method="post" action="/News/dlu">
                <label>��¼��</label><input type="text" name="username" value="" class="login_input" />
                <label>��&#160;&#160;��</label><input type="password" name="upwd" value="" class="login_input" />
                <input type="submit" class="login_sub" value="��¼" />
            </form>
            <a href="/Topic/register2">�����û�ע��</a>
        </c:if>
        <c:if test="${uname ne null}">
            <form id="login" method="#" action="javascript:void(0)">
                <label>�û���</label><label>${uname}&#160;&#160;��ӭ��½</label>&#160;&#160;<a href="/News/newselect"> ������ҳ </a>&#160;&#160;<a href="/News/tdlu"> �ǳ� </a>
            </form>
        </c:if>
    </div>
    <div id="channel"></div>
</div>

<div id="main">
    <div id="opt_list">
    	<ul>
            <li><a href="/Topic/news_add">��������</a></li>
            <li><a href="#">�༭����</a></li>
            <li><a href="/Topic/cahzaoxw">��������</a></li>
            <li><a href="/Topic/topic_add">��������</a></li>
            <li><a href="/Topic/topicList">�༭����</a></li>
        </ul>
    </div>
    <div id="opt_area">
        <form  action = "/" method="post" >
            <input type="text" maxlength="50" name="ntitle" value="" placeholder="��������Ҫ���ҵ�����"/>
            <input type="submit"  title="����" value="����" />
        </form>
        <ul class="classlist">
            <c:forEach items="${sessionScope.news}" var="newss">
                <li>${newss.ntitle}<span>���ߣ�${newss.nauthor}&#160;&#160;&#160;&#160;<a href='#'>�޸�</a>&#160;&#160;&#160;&#160;<a href='#'>ɾ��</a></span></li>
            </c:forEach>
        </ul>
    </div>
</div>
<div id="site_link">
	<a href="#">��������</a><span>|</span>
    <a href="#">Aboue Us</a><span>|</span>
    <a href="#">��ϵ����</a><span>|</span>
    <a href="#">������</a><span>|</span>
    <a href="#">�������</a><span>|</span>
    <a href="#">��������</a><span>|</span>
    <a href="#">��Ƹ��Ϣ</a><span>|</span>
    <a href="#">��վ��ͼ</a><span>|</span>
    <a href="#">���Է���</a>
</div>
<div id="footer">
	<p class="">24Сʱ�ͻ��������ߣ�010-68988888  &#160;&#160;&#160;&#160;  <a href="#">����������</a>  &#160;&#160;&#160;&#160;  �������ߣ�010-627488888<br />
	�����������������ٱ��绰��010-627488888  &#160;&#160;&#160;&#160;  �ٱ����䣺<a href="#">jubao@jb-aptech.com.cn</a></p>
    <p class="copyright">Copyright &copy; 1999-2009 News China gov, All Right Reserver<br />
	�����й�   ��Ȩ����</p>	
</div>
</body>
</html>