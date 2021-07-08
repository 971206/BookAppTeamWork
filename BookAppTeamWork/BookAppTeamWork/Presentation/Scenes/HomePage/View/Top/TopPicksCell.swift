//
//  TopPicksCell.swift
//  BookAppTeamWork
//
//  Created by MacBook  on 08.07.21.
//

import UIKit

class TopPicksCell: UITableViewCell {
    
    private var homePage : HomePageViewController!
    
    @IBOutlet weak var topView: UIView!
    override func awakeFromNib() {
        super.awakeFromNib()
        
    }
    
    
    @IBAction func onMenu(_ sender: UIButton){
        
        if (sender.tag == 10)
        {
            sender.tag = 0;
            
            let viewMenuBack : UIView = homePage.view.subviews.last!
            
            UIView.animate(withDuration: 0.3, animations: { () -> Void in
                var frameMenu : CGRect = viewMenuBack.frame
                frameMenu.origin.x = 1 * UIScreen.main.bounds.size.width
                viewMenuBack.frame = frameMenu
                viewMenuBack.layoutIfNeeded()
                viewMenuBack.backgroundColor = UIColor.clear
                }, completion: { (finished) -> Void in
                    viewMenuBack.removeFromSuperview()
            })
            
            return
        }
        
        sender.isEnabled = false
        sender.tag = 10
        let sb = UIStoryboard(name: "SlideMenuViewController", bundle: nil)
        
        let menuVC  = sb.instantiateViewController(withIdentifier: "MenuViewController") as! MenuViewController
        menuVC.btnMenu = sender
        homePage.view.addSubview(menuVC.view)
        homePage.addChild(menuVC)
        menuVC.view.layoutIfNeeded()
        
        
        menuVC.view.frame=CGRect(x: 0 + UIScreen.main.bounds.size.width , y: 0 , width: UIScreen.main.bounds.size.width, height: UIScreen.main.bounds.size.height);
        
        UIView.animate(withDuration: 0.3, animations: { () -> Void in
            menuVC.view.frame=CGRect(x: 0, y: 0, width: UIScreen.main.bounds.size.width, height: UIScreen.main.bounds.size.height);
            sender.isEnabled = true
            }, completion:nil)
    }
        
    
    
    //MARK: - ბეზიერით მინდოდა გაკეთება და ეს კოდი აჩენდა ყველაფერს მაგრამ მერე ლეიბლები და ბათონები აღარ ჩანდა არადა 3დ სიმულატორზე რომ ვნახულობდი ვფიქრობ უნდა გამოჩენილიყო
    
//    private func addCenter() {
//        let circlePath = UIBezierPath(arcCenter: CGPoint(x: contentView.bounds.width / 2 , y: 20), radius: CGFloat(243), startAngle: CGFloat(0), endAngle: CGFloat(Double.pi * 2), clockwise: true)
//        let shapeLayer = CAShapeLayer()
//        shapeLayer.path = circlePath.cgPath
//        shapeLayer.fillColor = UIColor(named: "Green")?.cgColor
//        shapeLayer.strokeColor =  UIColor(named: "Green")?.cgColor
//        shapeLayer.lineWidth = 3.0
//        topView.layer.addSublayer(shapeLayer)
//    }
    
}
