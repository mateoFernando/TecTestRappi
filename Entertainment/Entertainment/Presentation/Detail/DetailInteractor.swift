//
//  LoginInteractor.swift
//  LoginChallenge
//
//  Created by Fernando Mateo on 7/9/19.
//  Copyright © 2019 Fernando Mateo. All rights reserved.
//

import Foundation

protocol DetailInteractorInterface {
    // LoginPresenter -> LoginInteractor
}

class DetailInteractor {
    
    let service = NetService()
    var presenter:DetailPresenterInterface?
}

extension DetailInteractor:DetailInteractorInterface{
    
}
