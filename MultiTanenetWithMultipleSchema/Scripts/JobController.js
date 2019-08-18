angular.module('myApp').controller('JobController', function ($scope, $window, $http, $location, $routeParams, $filter) {

    $scope.save = function () {
            $http({
                method: 'POST',
                url: '/Home/Save',
                data: {"JobTitle": $scope.jobTitle}
            }).success(function (data) {
                if (data.success) {
                    toastr.success(data.Data);
                    $scope.jobTitle = "";
                }
                else {
                    toastr.error(data.Data);
                }
            }).error(function (XMLHttpRequest, textStatus, errorThrown) {
                toastr.error(XMLHttpRequest + ": " + textStatus + ": " + errorThrown, 'Error!!!');
            })
    }

    $scope.loadJobs = function () {
        $http({
            method: 'GET',
            url: '/Home/GetJobList',
            data: null
        }).success(function (data) {
            if (data.success) {
                $scope.joblist = data.Data;
            }
            else {
                toastr.error(data.Data);
            }
        }).error(function (XMLHttpRequest, textStatus, errorThrown) {
            toastr.error(XMLHttpRequest + ": " + textStatus + ": " + errorThrown, 'Error!!!');
        })
    }
})