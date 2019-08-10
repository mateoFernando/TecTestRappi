//
//  LoginViewController.swift
//  LoginChallenge
//
//  Created by Fernando Mateo on 7/9/19.
//  Copyright © 2019 Fernando Mateo. All rights reserved.
//

import UIKit
import AVFoundation

protocol HomeControllerInterface {
    // LoginPresenter->LoginView
    func showLoading()
    func hideLoading()
    func setupInitialView()
    func cleanFields()
    
    func getViewController() -> UIViewController
    func showAlert(alert: UIAlertController)
    func dismissAlert()
}

class HomeController: UIViewController {
    
    var presenter:HomePresenterInterface?
    var configurator = HomeConfigurator()
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
    
    @IBAction func loginWithPhoneNumber(_ sender: Any) {
        isPhoneLogin = true
        presenter?.loginWithPhoneNumber()
    }
    
    @objc func loginButtonClicked() {
        isPhoneLogin = false
        presenter?.loginWithFacebook()
    }
}

extension HomeController:HomeControllerInterface {
    
    func setupInitialView() {
        navigationController?.navigationBar.isHidden = true
    }
    
    func cleanFields() {
        
    }
    
    func showLoading() {
        
        
    }
    
    func hideLoading() {
        
        
    }
    
    func getViewController() -> UIViewController {
        
        return self
    }
}

//MARK: ALERT

extension HomeController {
    
    func showAlert(alert: UIAlertController) {
        
        self.alert = alert
        self.present(alert, animated: true, completion: nil)
    }
    
    func dismissAlert() {
        
        self.alert.dismiss(animated: true, completion: nil)
    }
}
