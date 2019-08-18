angular.module('myApp').controller('TenantController', function ($scope, $window, $http, $location, $routeParams, $filter) {

    $scope.save = function () {
        $http({
            method: 'POST',
            url: '/Home/SaveTenant',
            data: $scope.Tenant //tenant//{ "tenantName": $scope.tenant, "userName": $scope.user }
        }).success(function (data) {
            if (data.success) {
                alert(data.Data);
                toastr.success(data.Data);
                $scope.Tenant = {};
            }
            else {
                toastr.error(data.Data);
            }
        }).error(function (XMLHttpRequest, textStatus, errorThrown) {
            toastr.error(XMLHttpRequest + ": " + textStatus + ": " + errorThrown, 'Error!!!');
            //alert(textStatus);
        })
    }
})