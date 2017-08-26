var app = angular.module('app', []);
		app.controller('sumasController', function ($scope) {
	    $scope.sumar = function (v1, v2) {
	        $scope.resultado = v1 + v2;
	    };
});	