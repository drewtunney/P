App.controller('MessagesCtrl', function($scope, $http) {
  loadData();

  $scope.refresh = function() {
    loadData();
  }

  function loadData() {
    $http.get('/api/messages').success(function(data){
      $scope.messages = data;
      console.log(data);
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
    console.log(this.message.messages.id);
    $http.delete('users/'+ p.currentUserId + '/messages/' + this.message.messages.id).success(function(data){
      loadData();
    })
  }

  $scope.like = function() {
    console.log(this.message);
  }

});
