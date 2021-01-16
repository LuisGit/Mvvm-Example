//
//  EventListViewController.swift
//  LuisMvvmExample
//
//  Created by Luis Alvarado on 1/15/21.
//

import UIKit
import CoreData


class EventListViewController: UIViewController {
    
    private let coreDataManager = CoreDataManager()

    static func instantiate() -> EventListViewController {
        let storyboard = UIStoryboard(name: "Main", bundle: .main)
        let controller = storyboard.instantiateViewController(identifier: "EventListViewController") as! EventListViewController
        return controller
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupViews()
        coreDataManager.saveEvent(name: "New Year", date: Date(), image: #imageLiteral(resourceName: "newYear"))
        print(coreDataManager.fetchEvents())
    }
    
    private func setupViews(){
        let plusImage = UIImage(systemName: "plus.circle.fill")
        let barButtonItem = UIBarButtonItem(image: plusImage, style: .plain, target: self, action: #selector(tappedRightBarButton))
        barButtonItem.tintColor = .primary
        navigationItem.rightBarButtonItem = barButtonItem
        navigationItem.title = "Events"
        navigationController?.navigationBar.prefersLargeTitles = true
    }
    
    @objc private func tappedRightBarButton(){
        print("taped right bar button")
    }
}
