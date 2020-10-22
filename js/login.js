var app = angular.module('kollaApp', [])


app.controller('loginCtrl', function($scope, $http, $q, $window) {

    //usuario = {};


    $scope.ValidandoLogin = function(usuario) {


        $http.defaults.headers.post['Content-Type'] = 'application/x-www-form-urlencoded; charset=UTF-8';


        $scope.login = function() {

            data = {
                'email': usuario.email,
                'password': usuario.password
            };

            $http.post('api/Ingreso.php', data)
                .then(function success(response) {
                    if (response.data.length == 0) {
                         swal({
                            title: "Email o Password Incorrectas",
                            icon: "warning",
                        });
                        //alert("usuario incorrecto")
                    } else {
                        var element = response.data[0];

                        if (element.Es_Admin == "1") {

                            $scope.guardarSesion(element);
                            $window.location = 'TestimoniosAdmin.html';
                        } else {
                            $scope.guardarSesion(element);
                            $window.location = 'Home.html';
                        }
                    }
                }, function error(data, status, headers, config) {
                    console.log('error');
                });
        }
        $scope.login();

        $scope.guardarSesion = function(element) {
            localStorage.setItem('Id', element.Id);
            localStorage.setItem('Nombre', element.Nombre);
            localStorage.setItem('Apellido', element.Apellido);
            localStorage.setItem('Email', element.Email);
            localStorage.setItem('Es_Admin', element.Es_Admin);
        }
    }

});