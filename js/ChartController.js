app.controller('ChartController', function($scope, $window) {

    // if($window.sessionStorage.getItem(idUsuario) == null)
    // {
    //     $window.redirect()
    // }


    // $window.sessionStorage.setItem(idUsuario, data.id);

    $scope.cargarChart = function() {
        var title = $scope.$parent.CervezaSeleccionada.nombre;
        var CargandoInfo = AgrupandoInfo($scope.$parent.CervezaSeleccionada);
        var Ingredientes = ArmandoIngredientes(CargandoInfo);
        var IngredientesObjeto = objetoIngredientes(Ingredientes);

        Highcharts.chart('container', {
            chart: {
                plotBackgroundColor: null,
                plotBorderWidth: null,
                plotShadow: false,
                type: 'pie'
            },
            title: {
                text: title
            },
            tooltip: {
                pointFormat: '{series.name}: <b>{point.percentage:.1f}%</b>'
            },
            plotOptions: {
                pie: {
                    allowPointSelect: true,
                    cursor: 'pointer',
                    dataLabels: {
                        enabled: true,
                        format: '<b>{point.name}</b>: {point.percentage:.1f} %'
                    }
                }
            },
            series: [{
                name: 'Brands',
                colorByPoint: true,
                data: IngredientesObjeto
            }]
        });
    }

    function AgrupandoInfo(CervezaSeleccionada) {

        var aux = [];

        aux = CervezaSeleccionada.Ingredientes.split('/');

        return aux;

    }

    function ArmandoIngredientes(Ingredientes) {

        var item = {
            Nombre: [],
            Porcentaje: [],


        };
        for (var i = 0; i < Ingredientes.length; i++) {
            if (!tiene_numeros(Ingredientes[i])) {

                item.Nombre.push(Ingredientes[i]);


            } else {
                item.Porcentaje.push(Ingredientes[i]);

            }

        }
        return item;
    }

    function tiene_numeros(texto) {
        var numeros = "0123456789";

        for (i = 0; i < texto.length; i++) {
            if (numeros.indexOf(texto.charAt(i), 0) != -1) {

                return 1;
            }
        }
        return 0;
    }

    function objetoIngredientes(Ingredientes) {
        aux = [];


        for (var i = 0, j = 0; i < Ingredientes.Nombre.length, j < Ingredientes.Porcentaje.length; i++, j++) {

            aux.push({ name: Ingredientes.Nombre[i], y: parseInt(Ingredientes.Porcentaje[j].substring(0, Ingredientes.Porcentaje[j].length)) });

        }
        return aux;
    }
});