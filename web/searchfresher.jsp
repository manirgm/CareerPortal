<%-- 
    Document   : searchfresher
    Created on : Jun 25, 2012, 8:31:02 PM
    Author     : manikanta
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">
<%@taglib uri="http://displaytag.sf.net" prefix="display" %>
<%@taglib  uri="/struts-tags" prefix="s" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

        <%
                     response.setDateHeader("Expires", 0);
                     response.setHeader("Cache-Control", "no-store, no-cache, must-revalidate");
                     response.addHeader("Cache-Control", "post-check=0, pre-check=0");
                     response.setHeader("Pragma", "no-cache");
        %>
        <script type="text/javascript">
            function f1(){
                alert("hai");
            }
        </script>
        <link rel="stylesheet" type="text/css" href="css/style.css" />
        <link rel="stylesheet" type="text/css" href="css/displaytag.css" />
        <s:head theme="ajax"/>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Job Post Form</title>
    </head>
    <body>
        <div id=header>
            <a href="http://www.sysbiz.com"><img src="images/Sysbiz-Technologies_logo.png" width="200" height="70" alt="Sysbiz-Technologies_logo"/></a>

        </div>
        <div id=navigation>
            <center>
                <ul>

                    &nbsp;  &nbsp;  &nbsp;  &nbsp;  &nbsp;  &nbsp;  &nbsp;  &nbsp;  &nbsp;  &nbsp;  &nbsp;  &nbsp;  &nbsp;  &nbsp;  &nbsp;  &nbsp;  &nbsp;

                    <li><a  href="loginHome1.action"><h3>Home</h3></a></li>
                    <li><a href="PostJob.action"><h3>Post Job</h3></a></li>
                    <li><a href="jobPost.action"><h3>View Job</h3></a></li>
                    <li><a href="SearchHome.action"><h3>Search</h3></a></li>
                    <li><a href="logoutAction.action"><h3>Logout</h3></a></li>
                </ul>
            </center>

        </div>

        <div id=content><h3> Welcome <s:property value="#session.aname"/></h3><br><br><br>

            <center>
                <h2>User Details</h2>
                <s:form action="searchfresher"  >
                    <table>
                        <tr>
                            <td>
                                <s:select label="Select" name="select"  headerKey="1" headerValue="-Select-" list="{'Fresher','Experienced'}" />
                            </td>
                        </tr>
                        <tr>
                            <td></td>
                            <td>
                                <s:submit value="Search" theme="simple"/>
                            </td>
                        </tr>

                    </table>
                    <br><br>
                    <s:if test="list1!=null">
                        <display:table class="displayTable" export="false" id="newdata" name="list1"  requestURI="/searchfresher.action" pagesize="5">
                            <display:column property="firstName" title="Name" sortable="true"/>
                            
                            <display:column property="pgdegree" title="PG Degree" sortable="true"/>
                            <display:column property="ugdegree"  title="UG Degree" sortable="true"/>                                
                            <display:column property="exporfre" title="Expeirence/Fresher" sortable="true"/>
                            <display:column property="expyears" title="Experience in Years" sortable="true"/>

                            <display:column property="mobileNum" title="Contact" sortable="true"/>
                            <display:column value="Details" paramId="empid" paramProperty="empid" href="oneuserdetail.action" title="More" sortable="true"/>              
                        </display:table>
                    </s:if>
                    
                </s:form>
            </center>
        </div>
        <br>
        <br>
        <br>
        <br>
        <br>
        <br>
        <br>
        <br>
        <br>
        <br>
        <br>
        <br>
        <br>
        <br>
        <br>
        <div id=footer>
            <center>
                <p>@copyright 2012<br>
                    Sysbiz Technologies Pvt. Ltd.</p>
            </center>
        </div>
    </body>
</html>

