interface LayoutLoginScope extends ng.IScope {
   
    groups: any;
    oneAtATime: Boolean;
    items: string[];
    status: { open: Boolean; isFirstOpen: Boolean; isFirstDisabled: Boolean};
    allChecked: Boolean;
    statusFilter: { completed: boolean; };
    vm: LayoutLoginViewModel;

    
}


 