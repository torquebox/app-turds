<%
        String q = request.getParameter("q");
        if (null != q) session.setAttribute("foo", q);
%>

Session value=<%=session.getAttribute("foo")%>
