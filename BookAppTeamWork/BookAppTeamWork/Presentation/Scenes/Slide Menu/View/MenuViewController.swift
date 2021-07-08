//
//  MenuViewController.swift
//  BookAppTeamWork
//
//  Created by Shotiko Klibadze on 08.07.21.
//

import UIKit
class MenuViewController: UIViewController {
    
    
    var btnMenu : UIButton!
    

    @IBOutlet var theView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        theView.roundCorners(corners: [.bottomLeft], radius: 500)

        
    }
    
    @IBAction func closeSlideTapped(_ sender: Any) {
        UIView.animate(withDuration: 0.3, animations: { () -> Void in
            self.view.frame = CGRect(x: +UIScreen.main.bounds.size.width, y: 0, width: UIScreen.main.bounds.size.width,height: UIScreen.main.bounds.size.height)
            self.view.layoutIfNeeded()
            self.view.backgroundColor = UIColor.clear
            }, completion: { (finished) -> Void in
                self.view.removeFromSuperview()
                self.removeFromParent()
        })
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

extension UIView {
   func roundCorners(corners: UIRectCorner, radius: CGFloat) {
        let path = UIBezierPath(roundedRect: bounds, byRoundingCorners: corners, cornerRadii: CGSize(width: radius, height: radius))
        let mask = CAShapeLayer()
        mask.path = path.cgPath
        layer.mask = mask
    }
}
