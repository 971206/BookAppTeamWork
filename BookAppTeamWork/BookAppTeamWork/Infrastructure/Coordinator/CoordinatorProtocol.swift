//
//  CoordinatorProtocol.swift
//  MapKitTeamWork
//
//  Created by MacBook  on 07.07.21.
//

import UIKit

protocol CoordinatorProtocol: AnyObject {
    
    init(_ window: UIWindow?, navigationController: UINavigationController?)
    
    func start()
      
}
