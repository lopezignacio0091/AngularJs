app.controller('FormuController', function($scope, $http, $window) {


    $scope.formu = {

        'Email': $scope.Email,
        'Nombre': $scope.Nombre

    }


    $scope.ModalForm = function(formu) {

        data = {
            'Email': formu.Email,
            'Mensaje': formu.Mensaje
        };

        $http.post('api/Mensaje.php', data)
            .then(function success(response) {
                console.log(response);
                swal({
                    title: "Creado Con Exito",
                    icon: "success",
                });
                $window.location = 'Home.html';
            }, function error(data, status, headers, config) {
                console.log('error');
            });
    }



});