//
//  LoginRouter.swift
//  LoginChallenge
//
//  Created by Fernando Mateo on 7/9/19.
//  Copyright © 2019 Fernando Mateo. All rights reserved.
//

import Foundation
import UIKit

protocol HomeRouterInterface {
    // LoginPresenter -> LoginRouter
    var currentViewController: HomeController? {set get}
    func routeToDetail(viewData: ViewData)
}

class HomeRouter {
    
    weak var currentViewController: HomeController?
    
    init(_ currentViewController: HomeController) {
        
        self.currentViewController = currentViewController
    }
}

extension HomeRouter : HomeRouterInterface {
    
    func routeToDetail(viewData: ViewData) {
        
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        guard let viewController = storyboard.instantiateViewController(withIdentifier: "DetailController") as? DetailController else { return }
        viewController.data = viewData
        currentViewController?.navigationController?.pushViewController(viewController, animated: true)
    }
    
    func routeToSearch(viewData: ViewData) {
        
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        guard let viewController = storyboard.instantiateViewController(withIdentifier: "SearchController") as? SearchController else { return }
        currentViewController?.navigationController?.pushViewController(viewController, animated: true)
    }
}


