	var app = angular.module("cargarClientes",[]);	
	app.controller("clientes", clientes);
	
	function clientes($scope, $log, $http){
		
		 var config={   
				 		method:"GET",
				    	url:"http://localhost:8080/factory/listUser.do"
				    }
		
		 var response=$http(config);
		 
		 response.then(
				 function(res)
				 {			 
			 	
					 $scope.clientes=res.data;
		 		 },
		 
		 		 function(res)
		 		 {
		 			 alert("Ha fallado la petición. Estado HTTP:"+status);
		 		 }
		 
		 );
	}