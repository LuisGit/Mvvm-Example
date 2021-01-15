//
//  AppCoodinator.swift
//  LuisMvvmExample
//
//  Created by Luis Alvarado on 1/15/21.
//

import UIKit

protocol Coordinator  {
    var childCoordinators: [Coordinator] { get }
    func start()
}

final class AppCoodinator: Coordinator {
    private (set) var childCoordinators: [Coordinator] = []
    
    private let window: UIWindow
    
    init(window: UIWindow){
        self.window = window
    }
    
    func start() {
        let navigationController = UINavigationController()
        window.rootViewController = navigationController
        window.makeKeyAndVisible()
    }
}
