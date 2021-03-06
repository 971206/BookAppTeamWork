//
//  CoordinatorProtocol.swift
//  MapKitTeamWork
//
//  Created by MacBook  on 07.07.21.
//

import UIKit

protocol CoordinatorProtocol: AnyObject {
    
    var newsManager: NewsManagerProtocol { get }
    
    init(_ window: UIWindow?, navigationController: UINavigationController?)
    
    func start()
    func signIn()
    func signUp()
  
}
