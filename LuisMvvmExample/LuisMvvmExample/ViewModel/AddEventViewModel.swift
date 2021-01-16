//
//  AddEventViewModel.swift
//  LuisMvvmExample
//
//  Created by Luis Alvarado on 1/15/21.
//

import Foundation

final class AddEventViewModel {
    
    var coordinator: AddEventCoordinator?
    
    func viewDidDisappear() {
        coordinator?.didFinishAddEvent()
    }
}
