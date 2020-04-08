<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<%
    String ctx = request.getContextPath();
    pageContext.setAttribute("ctx", ctx);
%>


<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>出入校园登记</title>
    <style type="text/css">
        * {
            margin: 0px;
            padding: 0px;
        }

        #form {
            /* padding-top: 2%; */
            background: linear-gradient(to right, #A4F4DC, #B9EBF3);
            height: 610px;
            width: 35%;
            float: left;
            text-align: center;
        }

        .text {
            text-align: right;
            width: 70%;
        }

        h2 {
            margin-bottom: 20px;
        }

        #table {
            background: linear-gradient(to right, #B9EBF3, lightskyblue);
            /* padding-top: 2%; */
            /* border:1px solid; */
            height: 610px;
            width: 64%;
            float: right;
        }

        #table1 {
            text-align: center;
            padding-top: 1%;
            padding-left: 16%;
            width: 20%;
        }
    </style>
</head>
<body>
<div id="container">
    <div id="bg">
        <div id="form">
            <form action=" ${ctx }/StudentServlet?action=addStudent" method="post">
                <h2>进出校园登记</h2>

                <p>
                <div class="text">
                    <span>真实姓名：</span>
                    <input type="text" required pattern="^[\u4e00-\u9fa5]{0,}$" placeholder="必须填写，只能输入汉字"
                           name="name"><br><br>
                    <span>学号：</span>
                    <input type="text" required pattern="^([0-9]*$" maxlength="9" placeholder="必须填写，九位学号" name="id"><br><br>
                </div>
                </p>

                <div class="btn">
                    <input class="a" type="submit" value="提交">
                    <input class="a" type="submit" value="重置">
                </div>
            </form>
        </div>
        <div id="table">
            <div id="table1">
                <table border="1" align="center" width="850px">
                    <tr>
                        <th>姓名</th>
                        <th>学号</th>
                        <th>进入时间</th>
                        <th>离校时间</th>
                    </tr>


                    <tr>
                        <th>卢本伟</th>
                        <th>123</th>
                        <th>2000.1.2/19:20</th>
                        <th>NULL</th>
                    </tr>
                    <tr>
                        <th>刘某</th>
                        <th>456</th>
                        <th>2000.1.5/5:20</th>
                        <th>2002.1.2/19:20</th>
                    </tr>

                    <c:forEach items="${allStudents}" var="student" varStatus="status">
                        <tr class="list_goods_ul">
                            <!-- status是一个对象for循环状态 index就是取当前for循环角标 -->

                            <th>${student.name }</th>
                            <th>${student.id }</th>
                            <th>${student.entry_time}</th>
                            <th>${student.leave_time}</th>

                        </tr>
                    </c:forEach>

                </table>
            </div>
        </div>
    </div>
</div>
</body>
</html>