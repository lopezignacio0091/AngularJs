var app = angular.module('kollaApp', [])


app.controller('HomeCtrl', function($scope, $http, $window) {

    $scope.CerrarSesion = function() {
        localStorage.clear();
        $window.location = 'Ingreso.html';
    }


});