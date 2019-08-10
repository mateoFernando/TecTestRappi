//
//  LoginConfigurator.swift
//  LoginChallenge
//
//  Created by Fernando Mateo on 7/10/19.
//  Copyright © 2019 Fernando Mateo. All rights reserved.
//

import Foundation
import UIKit

protocol DetailConfiguratorInterface{
    func configure(viewController: DetailController)
}

class DetailConfigurator : DetailConfiguratorInterface {
    
    func configure(viewController: DetailController ) {
        
        let router = DetailRouter(viewController)
        
        viewController.presenter = DetailPresenter(view:viewController,router:router, interactor: DetailInteractor())
    }
}
