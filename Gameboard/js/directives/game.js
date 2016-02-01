app.directive('game', [function(){
	return {
		estrict: 'E',
		scope: { info: '=' },
		templateUrl: 'js/directives/game.html'
	};
}]);