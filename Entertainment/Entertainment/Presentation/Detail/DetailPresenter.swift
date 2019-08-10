//
//  LoginPresenter.swift
//  LoginChallenge
//
//  Created by Fernando Mateo on 7/9/19.
//  Copyright © 2019 Fernando Mateo. All rights reserved.
//

import Foundation

protocol DetailPresenterInterface{
    // LoginView -> LoginPresenter
    
    func notifyViewLoaded()
    func notifyViewWillDisappear()
}

typealias AddressViewModel = (title:String, city:String, nameSurname:String, address:String)

class DetailPresenter {
    
    var view:DetailControllerInterface?
    var router:DetailRouterInterface?
    var interactor: DetailInteractorInterface?
    var viewData: ViewData?
    
    init(view:DetailControllerInterface, router:DetailRouterInterface,interactor:DetailInteractorInterface) {
        self.view = view
        self.router = router
        self.interactor = interactor
    }
}

extension DetailPresenter : DetailPresenterInterface{
    
    func notifyViewLoaded() {
        view?.setupInitialView()
    }
    
    func notifyViewWillDisappear() {
        view?.cleanFields()
    }

}
