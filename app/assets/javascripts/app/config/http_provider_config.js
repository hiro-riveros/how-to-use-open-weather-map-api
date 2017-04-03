(function() {
  this.app.config(['$httpProvider', function ($httpProvider) {
    $httpProvider.defaults.headers.common['Content-Type'] = 'application/json; charset=UTF-8';
  }]);
}).call(this);
