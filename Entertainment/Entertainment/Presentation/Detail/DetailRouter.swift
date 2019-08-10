//
//  LoginRouter.swift
//  LoginChallenge
//
//  Created by Fernando Mateo on 7/9/19.
//  Copyright © 2019 Fernando Mateo. All rights reserved.
//

import Foundation
import UIKit

protocol DetailRouterInterface {
    // LoginPresenter -> LoginRouter
    var currentViewController: DetailController? {set get}
}

class DetailRouter {
    
    weak var currentViewController: DetailController?
    
    init(_ currentViewController: DetailController) {
        
        self.currentViewController = currentViewController
    }
}

extension DetailRouter : DetailRouterInterface {
    
}


