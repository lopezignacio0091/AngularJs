var app = angular.module('kollaApp', [])


app.controller('CrearCtrl', function($scope, $http, $window) {


    $scope.CrearUsuario = function(formu) {
        if (formu.Contrasena == formu.ContrasenaR) {

            data = {
                'Email': formu.Email,
                'Apellido': formu.Apellido,
                'Nombre': formu.Nombre,
                'Contraseña': formu.Contrasena,
                'Contraseña1': formu.ContrasenaR,
            };

            $http.post('api/Crear.php', data)
                .then(function success(response) {
                    console.log(response);
                    swal({
                        title: "Usuario Creado",
                        icon: "success",
                    });
                    $window.location = 'Ingreso.html';
                }, function error(data, status, headers, config) {
                    console.log('error');
                });

        } else {

            swal({
                title: "Las Contraseñas no coiciden",
                icon: "warning",
            });
        }




    }
    $scope.Cancelar = function(formu) {
        $window.location = 'Ingreso.html';
    }


});