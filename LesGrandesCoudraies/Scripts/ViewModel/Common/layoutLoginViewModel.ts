class LayoutLoginViewModel {

    public static $inject = [
        '$scope'
    ];


    constructor(private $scope: LayoutLoginScope) {
        $scope.oneAtATime = true;

        $scope.groups = [
            {
                title: 'Dynamic Group Header - 1',
                content: 'Dynamic Group Body - 1'
            },
            {
                title: 'Dynamic Group Header - 2',
                content: 'Dynamic Group Body - 2'
            }
        ];

        $scope.items = ['Item 1', 'Item 2', 'Item 3'];

        $scope.status = {
            open: true,
            isFirstOpen: true,
            isFirstDisabled: false
        };

        $scope.vm = this;
    }

    public addItem() {
        var newItemNo = this.$scope.items.length + 1;
        this.$scope.items.push('Item ' + newItemNo);
    }
        
} 

//var myapp = LayoutLoginViewModel = new LayoutLoginViewModel();
//$(function ()
//{
//    angular.module('loginModule', ['ui.bootstrap']);
//});

var todomvc = angular.module('todomvc', ['ui.bootstrap'])
    .controller('layoutLoginViewModel', LayoutLoginViewModel);

