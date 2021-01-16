//
//  EventListViewModel.swift
//  LuisMvvmExample
//
//  Created by Luis Alvarado on 1/15/21.
//

import Foundation

final class EventListViewModel {
    
    let title = "Events"
    var coordinator: EventListCoodinator?
    
    func tappedAddEvent(){
        //I need a coordinator to present the new screen
        coordinator?.startAddEvent()
    }
}
