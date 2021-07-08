//
//  CoordinatorProtocol.swift
//  FourthTeamWork
//
//  Created by user200328 on 7/8/21.
//

import UIKit

protocol CoordinatorProtocol: AnyObject {
        
    init(_ window: UIWindow?, navigationController: UINavigationController?)
    
    func start()
    func popViewController()
}
