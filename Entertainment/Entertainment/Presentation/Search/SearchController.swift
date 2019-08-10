//
//  LoginViewController.swift
//  LoginChallenge
//
//  Created by Fernando Mateo on 7/9/19.
//  Copyright © 2019 Fernando Mateo. All rights reserved.
//

import UIKit
import AVFoundation

protocol SearchControllerInterface {
    // LoginPresenter->LoginView
    
    func showAlert(alert: UIAlertController)
    func dismissAlert()
    
    func setupInitialView()
    func cleanFields()
}

class SearchController: UIViewController  {
    
    var presenter:SearchPresenterInterface?
    var configurator = SearchConfigurator()
    var isPhoneLogin = true
    var alert: UIAlertController!
    
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

extension SearchController:SearchControllerInterface {
    
    func setupInitialView() {
        navigationController?.navigationBar.isHidden = true
    }
    
    func cleanFields() {
        
    }
}

//MARK: ALERT

extension SearchController {
    
    func showAlert(alert: UIAlertController) {
        
        self.alert = alert
        self.present(alert, animated: true, completion: nil)
    }
    
    func dismissAlert() {
        
        self.alert.dismiss(animated: true, completion: nil)
    }
}
