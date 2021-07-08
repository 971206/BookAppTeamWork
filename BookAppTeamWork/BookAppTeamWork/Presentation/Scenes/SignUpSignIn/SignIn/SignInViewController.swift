//
//  SignInViewController.swift
//  BookAppTeamWork
//
//  Created by Ako Kobaidze on 08.07.21.
//

import UIKit

class SignInViewController: BaseViewController {
    
    @IBOutlet weak var groupField: UITextField!
    @IBOutlet weak var mailFiled: UITextField!
    @IBOutlet weak var passwordField: UITextField!
    
    @IBOutlet weak var singInButton: UIButton!
    var groupUs = ""
    var mailUs = ""
    var passUs = ""
    
    private let userDefaults = UserDefaults()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationController?.isNavigationBarHidden = true
        groupField.layer.cornerRadius = 25
        mailFiled.layer.cornerRadius = 25
        passwordField.layer.cornerRadius = 25
        groupField.layer.cornerRadius = 25
        passwordField.layer.cornerRadius = 25
        singInButton.layer.borderWidth = 1
        singInButton.layer.borderColor = #colorLiteral(red: 0.3529411765, green: 0.7411764706, blue: 0.5490196078, alpha: 1)
        singInButton.layer.cornerRadius = 25
        singInButton.layer.shadowOffset = CGSize(width: 0, height: 5)
        singInButton.layer.shadowColor = #colorLiteral(red: 0.3529411765, green: 0.7411764706, blue: 0.5490196078, alpha: 1)
        singInButton.layer.shadowOpacity = 2
        singInButton.layer.shadowRadius = 10
        singInButton.layer.masksToBounds = false
    }
    
    @IBAction func didTapOnBack(_ sender: Any) {  self.navigationController?.popViewController(animated: true)
    }
    @IBAction func didClickOnSignIn(_ sender: Any) {
        if didClickOnLogIn() {
            
            if let group = userDefaults.value(forKey: "group") as? String {
                self.groupUs = group
            }
            guard let groupFieledText = groupField.text else { return }
            
            if let mail = userDefaults.value(forKey: "mail") as? String {
                self.mailUs = mail
            }
            guard let mailFieldText = mailFiled.text else { return }
            
            if let pass = userDefaults.value(forKey: "password") as? String {
                self.passUs = pass
            }
            guard let passwordFieldText = passwordField.text else { return }
            
            if mailUs == mailFieldText && groupUs == groupFieledText && passUs == passwordFieldText {
                let storyboard = UIStoryboard(name: "MainViewController", bundle: nil)
                let vc = storyboard.instantiateViewController(withIdentifier: "MainViewController")
                self.navigationController?.pushViewController(vc, animated: true)
                
            }
        }
    
    }
    private func didClickOnLogIn() -> Bool {
        if groupField.text?.isEmpty == true || mailFiled.text?.isEmpty == true  || passwordField.text?.isEmpty == true {
            if groupField.text?.isEmpty == true {
                self.groupField.layer.borderColor = UIColor.red.cgColor
                self.passwordField.layer.borderColor = UIColor.black.cgColor
            } else if mailFiled.text?.isEmpty == true {
                self.passwordField.layer.borderColor = UIColor.red.cgColor
                self.mailFiled.layer.borderColor = UIColor.black.cgColor
            }
            return false
        }
        return true
    }
    
}
