//
//  LoginRouter.swift
//  LoginChallenge
//
//  Created by Fernando Mateo on 7/9/19.
//  Copyright © 2019 Fernando Mateo. All rights reserved.
//

import Foundation
import UIKit

protocol SearchRouterInterface {
    // LoginPresenter -> LoginRouter
    var currentViewController: SearchController? {set get}
}

class SearchRouter {
    
    weak var currentViewController: SearchController?
    
    init(_ currentViewController: SearchController) {
        
        self.currentViewController = currentViewController
    }
}

extension SearchRouter : SearchRouterInterface {
    
}


