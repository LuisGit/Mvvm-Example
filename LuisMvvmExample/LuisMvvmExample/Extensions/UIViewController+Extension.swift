//
//  UIViewController+Extension.swift
//  LuisMvvmExample
//
//  Created by Luis Alvarado on 1/15/21.
//

import UIKit

extension UIViewController {
    static func instantiate<T>() -> T {
        let storyboard = UIStoryboard(name: "Main", bundle: .main)
        let controller = storyboard.instantiateViewController(identifier: "\(T.self)") as! T
        return controller
    }
}
