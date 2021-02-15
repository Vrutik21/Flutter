<%@page import="java.sql.*"%>
<html>
<body>
<%
    Class.forName("com.mysql.jdbc.Driver");
    Connection conn=DriverManager.getConnection("jdbc:mysql://localhost/jdbc","root","vrutik");
    Statement st=conn.createStatement();
    ResultSet rs=st.executeQuery("select * from jdbcprac");
    while(rs.next())
    {
        String s1=rs.getString("namep");
        String s2=rs.getString("pass");

        out.print(s1);
        out.print(s2);
    }

%>
</body>
</html>