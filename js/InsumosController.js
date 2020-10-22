var app = angular.module('kollaApp', ['ngDialog'])


app.controller('InsumosCtrl', function($scope, $http, ngDialog, $window) {

    if (localStorage.getItem('Id') == null) { //localStorage.getItem('Es_Admin') == '0') {
        $window.location = 'Ingreso.html';
    }

    $http.get('api/Insumos.php')
        .then(function(response) {
            $scope.Insumos = response.data;
        })
        .catch(function(response) {
            alert('Error de api/cerveza');
        });


    $scope.CerrarSesion = function() {
        localStorage.clear();
        $window.location = 'Ingreso.html';
    }


    $scope.ModalProyecto = function(Proyecto) {

        $scope.ItemSeleccionado = Proyecto;
        ngDialog.open({
            template: 'Compra.html',
            width: 300,
            height: 350,
            scope: $scope,
            controller: 'InsumosCompra',
        });

    }



});