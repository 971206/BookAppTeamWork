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
        let vc = OnBoardingViewController.instantiateFromStoryboard()
        vc.coordinator = self
        navigationController?.pushViewController(vc, animated: true)

        window?.rootViewController = navigationController
        window?.makeKeyAndVisible()
    }

    func signIn() {
        let vc = SignInViewController.instantiateFromStoryboard()
        vc.coordinator = self
        UIApplication.shared.windows.first?.rootViewController = vc

//        navigationController?.pushViewController(vc, animated: true)
    }

    func signUp() {
            let vc = SignUpViewController.instantiateFromStoryboard()
            vc.coordinator = self
        UIApplication.shared.windows.first?.rootViewController = vc

//            navigationController?.pushViewController(vc, animated: true)
    }

}
