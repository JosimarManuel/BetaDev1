<%@ include file="/WEB-INF/views/include.jsp" %>  

    <div id="basic-form" class="section">  
    <div class="card-panel s4">

    <form:form method="POST" modelAttribute="userForm" class="form-signin" >
        
     
     <div class="row">
            <div class="row">
                   <div class="col s2">
                            <ul class="tabs tab-demo z-depth-1">
                            <li class="tab col s3"><a class="active" href="ui-tabs.html#test1">DATOS</a></li>
                            </ul>
                   </div>
            </div>
	      <div class="input-field col s3">
		        <spring:bind path="name">
		            <div class="form-group ${status.error ? 'has-error' : ''}">
		                <form:input type="text" path="name"     class="form-control" placeholder="Nombres" autofocus="true"></form:input>
		                <form:errors path="name"></form:errors>
		            </div>
		        </spring:bind>
	      </div>
		  <div class="input-field col s3">        
	         <spring:bind path="lastname">
	            <div class="form-group ${status.error ? 'has-error' : ''}">
	                <form:input type="text" path="lastname" class="form-control" placeholder="Apellidos"></form:input>
	                <form:errors path="lastname"></form:errors>
	            </div>
	        </spring:bind>
       	  </div>
       </div>

		<div class="row">
	      		
			<div class="input-field col s3">
	        	<spring:bind path="dni">
	            	<div class="form-group ${status.error ? 'has-error' : ''}">
	                	<form:input type="text" path="dni" class="form-control" placeholder="Documento de identidad"></form:input>
	                	<form:errors path="dni"></form:errors>
	            	</div>
	        	</spring:bind>
			</div>
                        
                    <!--    <div class="input-field col s5">
	        	<spring:bind path="dni">
	            	<div class="form-group ${status.error ? 'has-error' : ''}">
	                	<form:input type="text" path="dni" class="form-control" placeholder="Fecha de Nacimiento"></form:input>
	                	<form:errors path="dni"></form:errors>
	            	</div>
	        	</spring:bind>
			</div>      *-->
       </div>      
                        
                        
   <div class="card-panel"> 
       <div class="row">
                <div class="col s10">
                    <ul class="tabs tab-demo z-depth-1">
                      <li class="tab col s3"><a class="active" href="ui-tabs.html#test1">ACCESO</a>
                      </li>
                      <li class="tab col s3"><a href="ui-tabs.html#test2">DOCUMENTACION</a>
                      </li>
                      <li class="tab col s3"><a href="ui-tabs.html#test3">OTROS 1</a>
                      </li>                      
                    </ul>
                  </div>  
           <div class="col s12">
            <div id="test1" class="col s12">
               <br>
                            <div class="row">
                                <div class="input-field col s4">
                                    <spring:bind path="username">
                                    <div class="form-group ${status.error ? 'has-error' : ''}">
                                            <form:input type="email" path="username" class="form-control" placeholder="Correo electrónico"></form:input>
                                            <form:errors path="username"></form:errors>
                                    </div>
                                    </spring:bind>
                                </div>                              
                            </div>
		
		<div class="row">
                        <div class="input-field col s4">
                                <spring:bind path="password">
                                    <div class="form-group ${status.error ? 'has-error' : ''}">
                                        <form:input type="password" path="password" class="form-control" placeholder="Contraseña"></form:input>
                                        <form:errors path="password"></form:errors>
                                    </div>
                                </spring:bind>
                        </div>
        	
                </div>            
                <div class="row">                      
                        <div class="input-field col s4">		
                                <spring:bind path="passwordConfirm">
                                    <div class="form-group ${status.error ? 'has-error' : ''}">
                                        <form:input type="password" path="passwordConfirm" class="form-control"
                                                    placeholder="Confirma tu contraseña"></form:input>
                                        <form:errors path="passwordConfirm"></form:errors>
                                    </div>
                                </spring:bind>
                        </div>	       
                </div>                                               
           </div>
                    <div id="test2" class="col s12">
                      
                    </div>
                    <div id="test3" class="col s12">
                      
                    </div>
                    <div id="test4" class="col s12">
                      
                    </div>
                  </div>           
       
                   
        </div>
      </div> 
     <button class="btn btn-lg btn-primary btn-block" type="submit">Enviar</button>                       
    </form:form> 
    </div>        
    </div>

<%@ include file="/WEB-INF/views/footer.jsp" %>