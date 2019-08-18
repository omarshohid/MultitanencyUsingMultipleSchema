'use strict';
angular.module('myApp', ['ngRoute', 'ui.router', 'ngAnimate'])
    .config(function ($routeProvider, $locationProvider) {
        var id = ':ViewId';
        $routeProvider
            .when('/',
            {
                //redirectTo: '/'
                templateUrl: 'Home/Index'
            })
            .when('/Index',
            {
                templateUrl: 'Home/Index'
            })
            .when('/RedirectToMain',
            {
                templateUrl: 'Home/RedirectToMain'
            })
            .when('/JobList',
            {
                templateUrl: 'Home/Index'
            })
            .when('/CreateJob',
            {
                templateUrl: 'Home/Create'
            })
            .when('/CreateTenant',
            {
                templateUrl: 'Home/CreateTanent'
            })
            .when('/Error',
            {
                controller: function () {
                    toastr.error('sdsddad');
                },
                //templateUrl: $location.path()
                template: 'You do not have permission'
            })
            .when('/Login',
            {
                templateUrl: '/Account/Login'

            })
            .when('/Account/Login',
            {
                templateUrl: '/Account/Login'
            })
            //.when($location.path(),
            //{
            //    templateUrl: $location.path()
            //})
            //If link not found
            .otherWise
            {
                redirectTo: '/'
            }


    })