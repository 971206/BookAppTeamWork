//
//  LastCell.swift
//  BookAppTeamWork
//
//  Created by AltaSoftware MacMINI on 7/8/21.
//

import UIKit


class LastCell: UICollectionViewCell{


    @IBOutlet weak var signUpBtn: UIButton!
    @IBOutlet weak var signInBtn: UIButton!
    var viewController: BaseViewController?

    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        signInBtn.layer.cornerRadius = 20
        signUpBtn.layer.cornerRadius = 20

        signInBtn.backgroundColor = UIColor(named: "onBoarding")
        signUpBtn.backgroundColor = UIColor(named: "onBoarding")

    }

    @IBAction func signIn(_ sender: Any) {
        self.viewController?.coordinator?.signIn()
        print("Sing in")
    }
    @IBAction func signUp(_ sender: Any) {
        self.viewController?.coordinator?.signUp()
        print("Sing Up")

    }
}




    
