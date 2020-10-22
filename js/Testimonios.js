var app = angular.module('kollaApp', ['ngDialog'])


app.controller('TestimoniosCtrl', function($scope, $http, ngDialog, $window) {

    if (localStorage.getItem('Id') == null) { //localStorage.getItem('Es_Admin') == '0') {
        $window.location = 'Ingreso.html';
    }


    $http.get('api/Testimonios.php')
        .then(function(response) {
            $scope.Testimonios = response.data;
        })
        .catch(function(response) {
            alert('Error de api/Testimonios');
        });

    $scope.Email = localStorage.Email;
    $scope.Nombre = localStorage.Nombre;

    $scope.ModalForm = function() {

        ngDialog.open({
            template: 'Formu.html',
            width: '600',
            height: '400',
            scope: $scope,
            controller: 'FormuController',
        });
    };


    $scope.CerrarSesion = function() {
        localStorage.clear();
        $window.location = 'Ingreso.html';
    }


});