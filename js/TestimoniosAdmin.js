var app = angular.module('kollaApp', [])


app.controller('TestimoniosAdminCtrl', function($scope, $http, $window) {


    $http.get('api/Testimonios.php')
        .then(function(response) {
            $scope.Testimonios = response.data;
        })
        .catch(function(response) {
            alert('Error de api/Testimonios');
        });

    $scope.BorrarComentario = function(item) {

        data = {
            'Id': item.Id,

        };

        $http.post('api/TestimoniosAdmin.php', data)
            .then(function success(response) {
                console.log(response);
                swal({
                    title: "Eliminado Con Exito",
                    icon: "success",
                });
                $window.location = 'TestimoniosAdmin.html';
            }, function error(data, status, headers, config) {
                console.log('error');
            });
    }


    $scope.CerrarSesion = function() {
        localStorage.clear();
        $window.location = 'Ingreso.html';
    }



});