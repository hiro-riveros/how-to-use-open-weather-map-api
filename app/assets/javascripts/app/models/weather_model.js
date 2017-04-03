'use strict';

/**
* @name: Weather
* @description: Maintains Weather data
* @attributes:
*
* | Name                  | Type           |
* |-----------------------|----------------|
* | @id                   | integer        |
* | @created_at           | datetime       |
* | @updated_at           | datetime       |
*
**/

(function() {
  this.app.factory('Weather', ['$http', '$q', function ($http, $q) {
    return {
      current: function(city) {
        if (city == undefined) {
          return {};
        }
        var defer = $q.defer();
        $http({
          url: '/weathers/current/' + city.id,
          method: 'GET'
        }).then(function(model) {
          defer.resolve(model.data);
        }, function(model) {
          defer.reject(model.data);
        });
        return defer.promise;
      }
    };
  }]);
}).call(this);
