//
//  AppCoordinator.swift
//  MapKitTeamWork
//
//  Created by MacBook  on 07.07.21.
//

import  UIKit

final class AppCoordinator: CoordinatorProtocol {
    
    // MARK: - Private properties
    private var window: UIWindow?
    private var navigationController: UINavigationController?
    
    // MARK: - Internal properties
    
    var newsManager: NewsManagerProtocol
    
    init(_ window: UIWindow?, navigationController: UINavigationController?) {
        self.window = window
        self.navigationController = navigationController
        self.newsManager = NewsManager()
    }
    
    func start() {
        //let vc = MainViewController.instantiateFromStoryboard()
        //let vc = SlideMenuViewController.instantiateFromStoryboard()
        let vc = HomePageViewController.instantiateFromStoryboard()
        vc.coordinator = self
        navigationController?.pushViewController(vc, animated: true)
        
        window?.rootViewController = navigationController
        window?.makeKeyAndVisible()
    }
    
}
