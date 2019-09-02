var app = angular.module('myApp', []);

app.controller('appCtrl', function ($scope, $rootScope, $timeout, $window, $http) {
	var httpconfig = { 'Content-Type': 'application/x-www-form-urlencoded; charset=UTF-8' };

	$scope.getFile=function(){
		$http.get("data.php").then(function (response) {
			$scope.names=response.data;
		});
	}


	
	$scope.showhighlight=false;
	$scope.showhighlight_label='Chi tiết';
	
	$scope.convert2bbox=function(str){
		var arr=str.split(",").map(Number);    
		var topleft=[arr[1],arr[0]];
		var rightbottom=[arr[3],arr[2]];
		var bbox=[topleft,rightbottom];
		//console.log(bbox);
		return bbox;
	}
	
	$scope.addhighlight=function(id,tbl,cols,bbox){
		//console.log($window.map);
		//console.log(bbox);
		go2bbox($window.map,bbox);
		reload_geojson_lyr($window.map,id,tbl,cols);
		$scope.showhighlight_label='Ẩn đi';
		$scope.showhighlight=true;
		//$scope.showhighlight=$scope.showhighlight?false:true;
	}
	
	$scope.rmhighlight=function(){
		removelayer($window.map,$window.geojsonLayer);
		$scope.showhighlight_label='Chi tiết';
		$scope.showhighlight=false;
		//$scope.showhighlight=$scope.showhighlight?false:true;
	}
	
	/* $scope.go2vunghan=function(bbox){
		go2bbox($window.map,bbox);
		if(!$window.map.hasLayer($window.vung_han)){
			$window.vung_han.addTo($window.map);
		}
	} */
	
});