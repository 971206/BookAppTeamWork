//
//  SignUpViewController.swift
//  BookAppTeamWork
//
//  Created by Ako Kobaidze on 08.07.21.
//

import UIKit

class SignUpViewController: BaseViewController {

    @IBOutlet weak var nameSurnameField: UITextField!
    @IBOutlet weak var mailField: UITextField!
    @IBOutlet weak var mobileField: UITextField!
    @IBOutlet weak var groupField: UITextField!
    @IBOutlet weak var passwordField: UITextField!
    
    @IBOutlet weak var signUpButton: UIButton!
    
    let userDefaults = UserDefaults()
    let appGreenColor = UIColor(named: "color")

    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationController?.isNavigationBarHidden = true
        nameSurnameField.layer.cornerRadius = 25
        mailField.layer.cornerRadius = 25
        mobileField.layer.cornerRadius = 25
        groupField.layer.cornerRadius = 25
        passwordField.layer.cornerRadius = 25
        signUpButton.layer.borderWidth = 1
        signUpButton.layer.borderColor = #colorLiteral(red: 0.3529411765, green: 0.7411764706, blue: 0.5490196078, alpha: 1)

        signUpButton.layer.cornerRadius = 25
    }

    @IBAction func backButton(_ sender: Any) {
        self.navigationController?.popViewController(animated: true)
    }
    @IBAction func didClickOnSignUp(_ sender: Any) {
        if didRegisteredUser() {
            let storyboard = UIStoryboard(name: "MainViewController", bundle: nil)
            let vc = storyboard.instantiateViewController(withIdentifier: "MainViewController") as! MainViewController
            self.navigationController?.pushViewController(vc, animated: true)
        }
    }
    private func didRegisteredUser() -> Bool {
        let group = groupField.text
        let mail = mailField.text
        let name = nameSurnameField.text
        let mobile = mobileField.text
        let password = passwordField.text


        userDefaults.setValue(group, forKey: "group")
        userDefaults.setValue(mail, forKey: "mail")
        userDefaults.setValue(mobile, forKey: "mobile")
        userDefaults.setValue(name, forKey: "name")
        userDefaults.setValue(password, forKey: "password")
        return true
    }
}

extension SignUpViewController: UITextFieldDelegate {
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
    }
}


