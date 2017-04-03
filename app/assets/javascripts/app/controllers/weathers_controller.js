(function() {
  this.app.controller('WeathersController', ['$scope', 'Weather', function($scope, Weather) {

    $scope.weather = { current: 0 };
    $scope.changeCity = function(city) {
      Weather.current(city).then(function(data) {
        $scope.weather = data.weather;
      }, function(data) {
        console.error(data);
        alert('Problemas al obtener el clima, favor intenta mas tarde');
      });
    };

  }]);
}).call(this);
