angular.module('starter.controllers', [])

.controller('AppCtrl', function($scope, $ionicModal, $timeout) {

  // With the new view caching in Ionic, Controllers are only called
  // when they are recreated or on app start, instead of every page change.
  // To listen for when this page is active (for example, to refresh data),
  // listen for the $ionicView.enter event:
  //$scope.$on('$ionicView.enter', function(e) {
  //});
$scope.admin=true;
  // Form data for the login modal
  $scope.loginData = {};
 
  // Create the login modal that we will use later
  $ionicModal.fromTemplateUrl('templates/login.html', {
    scope: $scope
  }).then(function(modal) {
    $scope.modal = modal;
  });

  // Triggered in the login modal to close it
  $scope.closeLogin = function() {
    $scope.modal.hide();
  };

  // Open the login modal
  $scope.login = function() {
    $scope.modal.show();
  };

  // Perform the login action when the user submits the login form
  $scope.doLogin = function() {
    console.log('Doing login', $scope.loginData);

    // Simulate a login delay. Remove this and replace with your login
    // code if using a login system
    $timeout(function() {
      $scope.closeLogin();
    }, 1000);
  };
})

.controller('PlaylistsCtrl', function($scope) {
  $scope.playlists = [
    { title: 'Reggae', id: 1 },
    { title: 'Chill', id: 2 },
    { title: 'Dubstep', id: 3 },
    { title: 'Indie', id: 4 },
    { title: 'Rap', id: 5 },
    { title: 'Cowbell', id: 6 }
  ];
})
.controller('clientes', ['$scope','$http', function($scope,$http){
  $scope.actualizar=function(){
    $http.get('http://www.w3schools.com/angular/customers.php').then(
      function(response){
        $scope.clientes=response.data.records;
      });


  }

  
$scope.l="daner";
  
}])
.controller('prestamos', ['$scope','$http', function($scope,$http){
 
       $scope.actualizar=function(){
    $http.get('http://www.w3schools.com/angular/customers.php').then(
      function(response){
        $scope.prestamos=response.data.records;
      });
  }
}])
.controller('abonos', ['$scope','$http', function($scope,$http){
     $scope.actualizar=function(){
    $http.get('http://www.w3schools.com/angular/customers.php').then(
      function(response){
        $scope.abonos=response.data.records;
      });
  }
  
  
}])
.controller('empleados', ['$scope','$http', function($scope,$http){
     $scope.actualizar=function(){
    $http.get('http://www.w3schools.com/angular/customers.php').then(
      function(response){
        $scope.empleados=response.data.records;
      });
  }
  
  
}])
.controller('registrarempleado',['$scope','$http', function($scope,$http) {
$scope.RE=function(){
  

}
}])
.controller('registrarcliente', function($scope, $stateParams,$http) {
            
            $scope.crear =function(cliente){
  $http.post('http://localhost:8000',cliente).then(
    function(response){
      alert(response.data);
    },function(err){
alert(err.data);
  });


}

})
.controller('nuevoprestamo', function($scope, $stateParams,$http) {
      $http.get('http://www.w3schools.com/angular/customers.php').then(
      function(response){
        $scope.empleados=response.data.records;
      });
      $scope.cliente={}
$scope.crear =function(){
  $http.post('http://localhost:8000/API//nuevoCliente').then(
    function(response){
      alert(response);

  });


}
})

