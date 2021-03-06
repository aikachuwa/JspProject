<%-- 
    Document   : insert
    Created on : Jan 28, 2018, 11:25:24 AM
    Author     : dativa
--%>

  <%@ page language="java" import="java.sql.*,java.util.*,java.text.*" %>


<html>
<head>
    <title>LIST OF STUDENTS</title>
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.11.0/umd/popper.min.js" integrity="sha384-b/U6ypiBEHpOf/4+1nzFpr53nxSS+GLCkfwBdFNTxtclqqenISfwAzpKaMNFNmj4" crossorigin="anonymous"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/js/bootstrap.min.js" integrity="sha384-h0AbiXch4ZDo7tp9hKZ4TsHbi047NrKGLO3SEJAg45jXxnGIfYzk4Si90RDIqNm1" crossorigin="anonymous"></script>
    <meta name='viewport' content='width=device-width, initial-scale=1, maximum-scale=1'>

    <!--bootstrap-->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap-theme.min.css">
    <link href="css/index.css" media="all" rel="stylesheet" type="text/css" />


    <style>
            h2 {
        text-align:center;
        font-family: arial;
        color: red;
       };
    td {
        text-align:center;
        font-family: arial;
        font-size: 20;
    };
   

        body,html{
            height: 100%;
        }

        nav.sidebar, .main{
            -webkit-transition: margin 200ms ease-out;
            -moz-transition: margin 200ms ease-out;
            -o-transition: margin 200ms ease-out;
            transition: margin 200ms ease-out;
        }

        .main{
            padding: 10px 10px 0 10px;
        }

        @media (min-width: 765px) {

            .main{
                position: absolute;
                width: calc(100% - 40px);
                margin-left: 40px;
                float: right;
            }

            nav.sidebar:hover + .main{
                margin-left: 200px;
            }

            nav.sidebar.navbar.sidebar>.container .navbar-brand, .navbar>.container-fluid .navbar-brand {
                margin-left: 0px;
            }

            nav.sidebar .navbar-brand, nav.sidebar .navbar-header{
                text-align: center;
                width: 100%;
                margin-left: 0px;
            }

            nav.sidebar a{
                padding-right: 13px;
            }

            nav.sidebar .navbar-nav > li:first-child{
                border-top: 1px #e5e5e5 solid;
            }

            nav.sidebar .navbar-nav > li{
                border-bottom: 1px #e5e5e5 solid;
            }

            nav.sidebar .navbar-nav  {
                position: static;
                float: none;
                width: auto;
                margin-top: 0;
                background-color: transparent;
                border: 0;
                -webkit-box-shadow: none;
                box-shadow: none;
            }

            nav.sidebar .navbar-collapse, nav.sidebar .container-fluid{
                padding: 0 0px 0 0px;
            }

            .navbar-inverse .navbar-nav .open .dropdown-menu>li>a {
                color: #172a77;
            }

            nav.sidebar{
                width: 200px;
                height: 100%;
                margin-left: -160px;
                float: left;
                margin-bottom: 0px;
            }

            nav.sidebar li {
                width: 100%;
            }

            nav.sidebar:hover{
                margin-left: 0px;
            }

            .forAnimate{
                opacity: 0;
            }
        }

        @media (min-width: 1330px) {

            .main{
                width: calc(100% - 200px);
                margin-left: 200px;
            }

            nav.sidebar{
                margin-left: 0px;
                float: left;
            }

            nav.sidebar .forAnimate{
                opacity: 1;
            }
        }

        nav.sidebar .navbar-nav .open .dropdown-menu>li>a:hover, nav.sidebar .navbar-nav .open .dropdown-menu>li>a:focus {
            color: #CCC;
            background-color: transparent;
        }

        nav:hover .forAnimate{
            opacity: 1;
        }
        section{
            padding-left: 15px;
        }
      table, td, th {
     border: 1px solid green;
      font-family: arial;
     color: blue;
}

table {
    background-color: lightgreen;
   }

    </style>
</head>
<%
out.println("<style>  p {font-family: arial;"
           + " color: red; font-size: 16;   }; "
           + "</style>");
out.println("<style>  a,b {font-family: arial;"
           + " color: blue; font-size: 16;  "
            + "}; </style>");

out.println("<style>  a.space {font-family: arial;"
           + " color: blue; font-size: 18;  "
            + "margin:0 0 0 208px;}; </style>");

%>

<body>

<nav class="navbar navbar-custom"  style="background-color: #33497d">
    <div class="container-fluid">
        <div class="navbar-header">
            <a class="navbar-brand" href="index.php" style="color:rgba(255,107,212,0.67); text-align:center">STUDENT REGISTRATION SYSTEM</a>
        </div>
</nav>
<div id="main">

    <div id="leftnav">

        <nav class="navbar navbar-default sidebar" role="navigation">
            <div class="container-fluid">
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-sidebar-navbar-collapse-1">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                </div>
                <div class="collapse navbar-collapse" id="bs-sidebar-navbar-collapse-1" style="background-color: rgba(15,29,125,0.93)">
                    <ul class="nav navbar-nav">
                        <li class="active"><a href="index.jsp">Dashboard<span style="font-size:16px;" class="pull-right hidden-xs showopacity glyphicon glyphicon-home"></span></a></li>
                        <li ><a href="insert.jsp" style="color:white">Add New Student <span style="font-size:16px;" class="pull-right hidden-xs glyphicon glyphicon-plus-sign"></span></a></li>
                        <li ><a href="list.jsp" style="color:white">Students Records<span style="font-size:16px;" class="pull-right hidden-xs showopacity glyphicon glyphicon-eye-open"></span></a></li>
                        <li ><a href="edit.jsp" style="color:white">Edit Students Record<span style="font-size:16px;" class="pull-right hidden-xs showopacity glyphicon glyphicon-pencil"></span></a></li>
                        <li ><a href="" style="color:white">Setting<span style="font-size:16px;" class="pull-right hidden-xs showopacity 	glyphicon glyphicon-cog"></span></a></li>
                        <li ><a href="" style="color:white">Help<span style="font-size:16px;" class="pull-right hidden-xs showopacity glyphicon glyphicon-eye-open"></span></a></li>
                        <li ><a href="" style="color:white">About<span style="font-size:16px;" class="pull-right hidden-xs showopacity glyphicon glyphicon-pencil"></span></a></li>

                    </ul>
                </div>
            </div>
        </nav>
    </div>


    <div id="displayDaily">

        <div id="contolldivDaily" class="container">

            <div id="page-wrapperU">
                <div class="row">
                    <div class="col-lg-6">
                        <h1 class="page-header">Student's Details</h1>
                    </div>
                </div>

                <div align="center" width="200%">
  

                    
                    
             
<table border="1" width="50%">
<tr>
<td width="100%">
<form method="POST" action="save.jsp">

<h2 align="center">ADD RECORD</h2>
<table border="1" width="100%">
<tr>
<td width="50%"><b>Name:</b></td>
<td width="50%"><input type="text" name="name" size="50"/> </td>
</tr>
<tr>
<td width="50%"><b>City:</b></td>
<td width="50%"><input type="text" name="city" size="50"></td>
</tr>
<tr>
<td width="50%"><b>Telephone Number:</b></td>
<td width="50%"><input type="text" name="telephone" size="15"></td>
</tr>
</table>
<p><input type="submit" value="Submit" name="submit">
<input type="reset" value="Reset" name="reset"></p>
</form>
</td>
</tr>
</table>

       
                    
                    
                    
                    
                    
                    
                </div>


            </div>

        </div>

    </div>




</div>
</body>
</html>