//
//  LoginViewController.swift
//  LoginChallenge
//
//  Created by Fernando Mateo on 7/9/19.
//  Copyright © 2019 Fernando Mateo. All rights reserved.
//

import UIKit
import AVFoundation

protocol DetailControllerInterface {
    // LoginPresenter->LoginView
    func setupInitialView()
    func cleanFields()
}

class DetailController: UIViewController {
    
    var presenter:DetailPresenterInterface?
    var configurator = DetailConfigurator()
    var alert: UIAlertController!
    var data: ViewData!
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        configurator.configure(viewController: self)
        presenter?.notifyViewLoaded()
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        
        super.viewWillDisappear(animated)
        presenter?.notifyViewWillDisappear()
    }
    
    
}

extension DetailController : DetailControllerInterface {
    
    func setupInitialView() {
        navigationController?.navigationBar.isHidden = true
    }
    
    func cleanFields() {
        
    }
}
