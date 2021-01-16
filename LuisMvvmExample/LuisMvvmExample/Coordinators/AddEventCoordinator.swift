//
//  AddEventCoordinator.swift
//  LuisMvvmExample
//
//  Created by Luis Alvarado on 1/15/21.
//

import UIKit

final class AddEventCoordinator : Coordinator {
    private (set) var childCoordinators: [Coordinator] = []
    private let navigationController: UINavigationController
    
    var parentCoordinator: EventListCoodinator?
    
    init(navigationController : UINavigationController) {
        self.navigationController = navigationController
    }
    
    func start() {
        //Steps:
        //create view model
        let addEventViewModel = AddEventViewModel()
        //set viewModel delegate
        addEventViewModel.coordinator = self
        //create view controller
        let addEventViewController: AddEventViewController = .instantiate()
        //set the VC reference to the model
        addEventViewController.viewModel = addEventViewModel
        
        //present the view controller using the navigation controller
        navigationController.present(addEventViewController, animated: true, completion: nil)
    }
    
    func didFinishAddEvent() {
        parentCoordinator?.childDidFinish(self)
    }
    
    deinit {
        print("bye!")
    }
}
