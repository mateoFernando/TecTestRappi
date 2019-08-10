//
//  LoginInteractor.swift
//  LoginChallenge
//
//  Created by Fernando Mateo on 7/9/19.
//  Copyright © 2019 Fernando Mateo. All rights reserved.
//

import Foundation

protocol HomeInteractorInterface {
    // LoginPresenter -> LoginInteractor
}

class HomeInteractor {
    
    let service = NetService()
    var presenter:HomePresenterInterface?
}

extension HomeInteractor:HomeInteractorInterface{
    
}
