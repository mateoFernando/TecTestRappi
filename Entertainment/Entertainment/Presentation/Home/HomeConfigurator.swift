//
//  LoginConfigurator.swift
//  LoginChallenge
//
//  Created by Fernando Mateo on 7/10/19.
//  Copyright © 2019 Fernando Mateo. All rights reserved.
//

import Foundation
import UIKit

protocol HomeConfiguratorInterface{
    func configure(viewController: HomeController)
}

class HomeConfigurator : HomeConfiguratorInterface {
    
    func configure(viewController: HomeController ) {
        
        let router = HomeRouter(viewController)
        
        viewController.presenter = HomePresenter(view:viewController,router:router, interactor: HomeInteractor())
    }
}
