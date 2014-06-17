
App.controller('MessagesCtrl', function($scope, $http) {
  $scope.message = "Angular!!"
  loadData();

  $scope.refresh = function() {
    loadData();
  }

  function loadData() {
    $http.get('/api/messages').success(function(data){
      $scope.messages = data;
    });
  };

  $scope.createMessage = function() {
    var message = {
      content: $scope.messageContents,
    }
    $http.post('users/'+ p.currentUserId + '/messages', message).success(function(data){
      loadData();  
    })
    $scope.messageContents = null;
  }

  $scope.deleteMessage = function() {
    $http.delete('users/'+ p.currentUserId + '/messages/' + this.message.id).success(function(data){
      loadData();
    })
  }

});

// App.controller('CreateMessageCtrl', function($scope, $http) {

//   $scope.createMessage = function() {

//     var message = {
//       content: $scope.messageContents,
//       likes: 0,
//       tags: "guttate",
//     };

//     $http.post('users/'+ p.currentUserId + '/messages', message);

//   };
// });