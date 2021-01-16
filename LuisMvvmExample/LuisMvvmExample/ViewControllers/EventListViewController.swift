//
//  EventListViewController.swift
//  LuisMvvmExample
//
//  Created by Luis Alvarado on 1/15/21.
//

import UIKit
import CoreData


class EventListViewController: UIViewController {
    
    var viewModel: EventListViewModel!
    
    private let coreDataManager = CoreDataManager()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupViews()
        coreDataManager.saveEvent(name: "New Year", date: Date(), image: #imageLiteral(resourceName: "newYear"))
        print(coreDataManager.fetchEvents())
    }
    
    private func setupViews(){
        let plusImage = UIImage(systemName: "plus.circle.fill")
        let barButtonItem = UIBarButtonItem(image: plusImage, style: .plain, target: self, action: #selector(tappedAddEventButton))
        barButtonItem.tintColor = .primary
        navigationItem.rightBarButtonItem = barButtonItem
        navigationItem.title = viewModel.title
        navigationController?.navigationBar.prefersLargeTitles = true
    }
    
    @objc private func tappedAddEventButton(){
        viewModel.tappedAddEvent()
    }
}
