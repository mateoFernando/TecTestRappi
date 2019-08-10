//
//  LoginPresenter.swift
//  LoginChallenge
//
//  Created by Fernando Mateo on 7/9/19.
//  Copyright © 2019 Fernando Mateo. All rights reserved.
//

import Foundation

protocol HomePresenterInterface{
    // LoginView -> LoginPresenter
    
    func notifyViewLoaded()
    func notifyViewWillDisappear()
}

class HomePresenter {
    
    var view:HomeControllerInterface?
    var router:HomeRouterInterface?
    var interactor:HomeInteractorInterface?
    var viewData: ViewData?
    
    let kAddressDetailSegueIdentifier = "goToDetail"
    
    init(view:HomeControllerInterface, router:HomeRouterInterface,interactor:HomeInteractorInterface) {
        self.view = view
        self.router = router
        self.interactor = interactor
    }
}

extension HomePresenter {
    
    func showSimpleAlert(title:String, message:String) {
//        let alert = UIAlertController(title: title, message: message, preferredStyle: UIAlertController.Style.alert)
//
//        alert.addAction(UIAlertAction(title: "Ok", style: UIAlertAction.Style.default, handler: { _ in
//
//        }))
//        self.view?.showAlert(alert:alert)
    }
}

extension HomePresenter : HomePresenterInterface{
    
    func notifyViewLoaded() {
        view?.setupInitialView()
    }
    
    func notifyViewWillDisappear() {
        view?.cleanFields()
    }
}


