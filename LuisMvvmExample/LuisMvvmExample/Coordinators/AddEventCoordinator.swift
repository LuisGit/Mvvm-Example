//
//  AddEventCoordinator.swift
//  LuisMvvmExample
//
//  Created by Luis Alvarado on 1/15/21.
//

import UIKit

final class AddEventCoordinator : Coordinator {
    private (set) var childCoordinators: [Coordinator] = []
    
    private let navigationController: UINavigationController!
    
    init(navigationController : UINavigationController) {
        self.navigationController = navigationController
    }
    
    func start() {
        //Steps here:
        //create view controller
        let viewController = UIViewController()
        viewController.view.backgroundColor = .primary
        //create view model
        //present the view controller using the navigation controller
        navigationController.present(viewController, animated: true, completion: nil)
    }
}
