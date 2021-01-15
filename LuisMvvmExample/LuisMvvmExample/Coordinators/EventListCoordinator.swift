//
//  EventListCoordinator.swift
//  LuisMvvmExample
//
//  Created by Luis Alvarado on 1/15/21.
//

import UIKit

final class EventListCoodinator: Coordinator {
    private (set) var childCoordinators: [Coordinator] = []
    
    private let navigationController : UINavigationController
    
    init(navigationController : UINavigationController ){
        self.navigationController = navigationController
    }
    
    func start() {
        let eventListViewController = EventListViewController.instantiate()
        navigationController.setViewControllers([eventListViewController], animated: false)
    }
    
    
}
