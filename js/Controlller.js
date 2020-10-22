var app = angular.module('kollaApp', ['ngDialog'])


app.controller('cervezaCtrl', function($scope, $http, ngDialog, $window) {




    $http.get('api/index.php')
        .then(function(response) {
            $scope.kolla = response.data;
        })
        .catch(function(response) {
            alert('Error de api/cerveza');
        });

    $scope.CerrarSesion = function() {
        localStorage.clear();
        $window.location = 'Ingreso.html';
    }


    $scope.CervezaSeleccionada = [];

    $scope.ModalProyecto = function(Proyecto) {
        $scope.CervezaSeleccionada = Proyecto;
        ngDialog.open({
            template: 'Descripcion.html',
            width: '550',
            height: 'auto',
            scope: $scope,
            controller: 'ChartController',
        });


    };


});