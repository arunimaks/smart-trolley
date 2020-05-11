<%-- 
    Document   : register
    Created on : Feb 6, 2020, 6:22:38 PM
    Author     : Lenovo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:useBean class="DB.ConnectionClass" id="obj1"></jsp:useBean>
<%@include file="header.jsp" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Smart  Trolley</title>
    </head>
    <body>
        <%
        if(request.getParameter("btnsubmit")!=null){
            
            String name=request.getParameter("txtname");
            String address=request.getParameter("txtaddress");
            String email=request.getParameter("txtemail");
            String contactno=request.getParameter("contact");
            String gender=request.getParameter("gender");
            String uname=request.getParameter("txtuname");
            String password=request.getParameter("txtpassword");
            String aadhar=request.getParameter("aadhar");
            String place=request.getParameter("txtplace");
              String district=request.getParameter("txtdistrict");
            String photo=request.getParameter("photo");
            boolean b=false;
                b=obj1.execute("insert into tb_register(name,address,email,contactno,gender,username,password,district_name,place_name,photo,aadharno)values('"+name+"','"+address+"','"+email+"',"+contactno+",'"+gender+"','"+uname+"','"+password+"','"+district+"','"+place+"','"+photo+"',"+aadhar+")");
                 if (b==true){
                    out.print("success");
                }
                else {
                    out.print("failed");
                }
        }
        
        %>
        <form method="post" enctype="multipart/form-data" action="UploadAction.jsp">
            <table align="center">
                <th align="center">REGISTRATION</th>
                <tr>
                    <td>Name</td>
                    <td>
                        <input type="text" name="txtname" required="required" />
                    </td>
                </tr>
                <tr>
                    <td>Address</td>
                    <td>
                        <input type="text" name="txtaddress" required="required" />
                    </td>
                </tr>
                <tr>
                    <td>Email</td>
                    <td>
                        <input type="text" name="txtemail" required="required" />
                    </td>
                </tr>
                <tr>
                    <td>Contact Number</td>
                    <td>
                        <input type="text" name="contact" required="required"  pattern="[0-9]{10,12}" title="Phonenumber"/>
                    </td>
                </tr>
                <tr>
                    <td>Gender</td>
                    <td>
                        <input type="radio" name="gender" value="male" required="required">Male
                        <input type="radio" name="gender" value="female" required="required">Female
                    </td>
                </tr>
                <tr>
                    <td>Username</td>
                    <td>
                        <input type="text" name="txtuname" required="required" />
                    </td>
                </tr>
                <tr>
                    <td>Password</td>
                    <td>
                        <input type="password" name="txtpassword" required="required" autocomplete="off" />
                    </td>
                </tr>
                <tr>
                    <td>District</td>
                    
                    <td>
                        <input type="text" name="txtdistrict" required="required" pattern="[a-zA-Z]{3,}"/>
                    </td>
                </tr>
                <tr>
                    <td>Place</td>
               
                    <td>
                        <input type="text" name="txtplace" required="required" pattern="[a-zA-Z]{3,}"/>
                    </td> 
                      
                </tr>
                <tr>
                    <td>Photo</td>
                    <td>
                        <input type="file" name="photo" required="required" />
                    </td>
                </tr>
                <tr>
                    <td>Aadhar number</td>
                    <td>
                        <input type="text" name="aadhar" required="required" pattern="[0-9]{12}" title="Aadhar Number 12 digit required" />
                    </td>
                </tr>
                <tr>
                    <td></td>
                    <td><input type="submit" name="btnsubmit" value="Register" /></td>
                </tr>
            </table>
        </form>
         <%@include file="footer.jsp" %>
    </body>
</html>
