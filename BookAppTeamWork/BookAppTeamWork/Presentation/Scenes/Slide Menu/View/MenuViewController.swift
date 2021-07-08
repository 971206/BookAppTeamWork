//
//  MenuViewController.swift
//  BookAppTeamWork
//
//  Created by Shotiko Klibadze on 08.07.21.
//

import UIKit
protocol SlideMenuDelegate {
    func slideMenuItemSelectedAtIndex(_ index : Int32)
}
class MenuViewController: UIViewController {
    
    
    var btnMenu : UIButton!
    var delegate : SlideMenuDelegate?

    override func viewDidLoad() {
        super.viewDidLoad()

        
    }
    
    @IBAction func menuBtnTapped(_ sender: UIButton) {
        sender.isSelected = !sender.isSelected
        if (sender.isSelected) {
            sender.backgroundColor = .red
            sender.titleLabel?.textColor = .white
        } else {
            sender.backgroundColor = .clear
            sender.titleLabel?.textColor = .black
        }
        
    }
    
   

}
