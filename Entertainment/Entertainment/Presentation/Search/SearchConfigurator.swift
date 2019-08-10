//
//  LoginConfigurator.swift
//  LoginChallenge
//
//  Created by Fernando Mateo on 7/10/19.
//  Copyright © 2019 Fernando Mateo. All rights reserved.
//

import Foundation
import UIKit

protocol SearchConfiguratorInterface{
    func configure(viewController: SearchController)
}

class SearchConfigurator : SearchConfiguratorInterface {
    
    func configure(viewController: SearchController ) {
        
        let router = SearchRouter(viewController)
        
        viewController.presenter = SearchPresenter(view:viewController,router:router, interactor: SearchInteractor())
    }
}
