//
//  LoginInteractor.swift
//  LoginChallenge
//
//  Created by Fernando Mateo on 7/9/19.
//  Copyright © 2019 Fernando Mateo. All rights reserved.
//

import Foundation

protocol SearchInteractorInterface {
    // LoginPresenter -> LoginInteractor
}

class SearchInteractor {
    
    let service = NetService()
    var presenter:SearchPresenterInterface?
}

extension SearchInteractor:SearchInteractorInterface{
    
}
