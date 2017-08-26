<%@ include file="/WEB-INF/views/include.jsp" %>

<!--AGREGADO 24-8-17-->

<html lang="en">
<head> 
  <!-- CORE CSS-->
  
  <link href="resources/css/materialize.min.css" type="text/css" rel="stylesheet" media="screen,projection">
  <link href="resources/css/style.min.css" type="text/css" rel="stylesheet" media="screen,projection">
  <!-- Custome CSS-->    
  <link href="resources/css/custom/custom.min.css" type="text/css" rel="stylesheet" media="screen,projection">
  
  <!-- INCLUDED PLUGIN CSS ON THIS PAGE -->
  <link href="resources/js/plugins/prism/prism.css" type="text/css" rel="stylesheet" media="screen,projection">
  <link href="resources/js/plugins/perfect-scrollbar/perfect-scrollbar.css" type="text/css" rel="stylesheet" media="screen,projection">
  <link href="resources/js/plugins/data-tables/css/jquery.dataTables.min.css" type="text/css" rel="stylesheet" media="screen,projection">
  <link href="resources/js/plugins/chartist-js/chartist.min.css" type="text/css" rel="stylesheet" media="screen,projection">
</head>

<body>
<form method="POST" modelAttribute="regisPersonalForm">
<p class="caption"></p>
<input class="btn btn-lg btn-primary btn-block" onclick="window.location.href='${contextPath}/regisPersonal.do'" type="button" value="NUEVO" name="nuevo"/>   

<div id="basic-form" class="section">
<div class="card-panel">
    
  <!-- START MAIN -->
  <div>
    <!-- START WRAPPER -->
    <div class="wrapper">

      <!-- START CONTENT -->
      <section id="content">             

        <!--start container-->
        <div class="container">         
          <div class="section">    
            
            <!--DataTables example-->
            <div id="table-datatables">
               
                    <div class="row">
                         <div>                 
                            <table id="data-table-simple" class="responsive-table display" cellspacing="0">
                               <div class="row">
                                    <thead>
                                        <tr>
                                            <th>Nombres</th>
                                            <th>Apellidos</th>
                                            <th>Dni</th>
                                            <th>Modalidad</th>                           
                                            <th>Área</th>
                                            <th>Puesto</th>
                                        </tr>
                                    </thead>     
                                </div> 
                                <div class="row">
                                    <tbody>
                                        <c:forEach items="${pageInfo.list_user}" var="lstUsers">
                                        <tr>
                                                <td><c:out value="${lstUsers.name}"/></td>
                                                <td><c:out value="${lstUsers.lastname}"/></td>
                                                <td><c:out value="${lstUsers.dni}"/></td>
                                                <td><c:out value="${lstUsers.modalidad}"/></td>
                                                <td><c:out value="${lstUsers.area}"/></td>
                                                <td><c:out value="${lstUsers.puesto}"/></td>

                                        </tr>
                                        </c:forEach>

                                    </tbody>
                                </div>                            
                  </table>                                
                </div>                        
              </div>       
              </div>             
           
          </div>
        
        </div>
        <!--end container-->
         
      </section>
      <!-- END CONTENT -->    
    </div>
    <!-- END WRAPPER -->
     
  </div>
  <!-- END MAIN -->
</div>
</div>
  
    <%@ include file="/WEB-INF/views/footer.jsp" %>  
   
    <!-- jQuery Library -->
    <script type="text/javascript" src="resources/js/plugins/jquery-1.11.2.min.js"></script>    
    <!--materialize js-->
    <script type="text/javascript" src="js/materialize.min.js"></script>
    <!--prism-->
    <script type="text/javascript" src="resources/js/plugins/prism/prism.js"></script>
    <!--scrollbar-->
    <script type="text/javascript" src="resources/js/plugins/perfect-scrollbar/perfect-scrollbar.min.js"></script>
    <!-- data-tables -->
    <script type="text/javascript" src="resources/js/plugins/data-tables/js/jquery.dataTables.min.js"></script>
    <script type="text/javascript" src="resources/js/plugins/data-tables/data-tables-script.js"></script>
    <!-- chartist -->
    <script type="text/javascript" src="resources/js/plugins/chartist-js/chartist.min.js"></script>   
    
    <!--plugins.js - Some Specific JS codes for Plugin Settings-->
    <script type="text/javascript" src="resources/js/plugins.min.js"></script>
    <!--custom-script.js - Add your own theme custom JS-->
    <script type="text/javascript" src="resources/js/custom-script.js"></script>
    
  </form>  
</body>    

</html>

            

       