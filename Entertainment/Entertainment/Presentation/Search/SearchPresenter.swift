//
//  LoginPresenter.swift
//  LoginChallenge
//
//  Created by Fernando Mateo on 7/9/19.
//  Copyright © 2019 Fernando Mateo. All rights reserved.
//

import Foundation

protocol SearchPresenterInterface{
    // LoginView -> LoginPresenter
    func notifyViewLoaded()
    func notifyViewWillDisappear()
    
}


class SearchPresenter {
    
    var view:SearchControllerInterface?
    var router:SearchRouterInterface?
    var interactor:SearchInteractorInterface?
    var viewData: ViewData?
    
    var userLogin : UserLoginViewData?
    
    init(view:SearchControllerInterface, router:SearchRouterInterface,interactor:SearchInteractorInterface) {
        self.view = view
        self.router = router
        self.interactor = interactor
    }
}

extension SearchPresenter : SearchPresenterInterface{
    
    func notifyViewLoaded() {
        view?.setupInitialView()
    }
    
    func notifyViewWillDisappear() {
        view?.cleanFields()
    }
}


