//
//  TabBarViewController.swift
//  BookAppTeamWork
//
//  Created by Mac User on 7/16/21.
//

import UIKit

class TabBarViewController: UITabBarController, Storyboarded, CoordinatorDelegate  {
    var coordinator: CoordinatorProtocol?
    

    override func viewDidLoad() {
        super.viewDidLoad()

      //  _ = self.viewControllers![2] as! //
    //    _ = self.viewControllers![0] as! SearchListViewController

   //     _ = self.viewControllers![0] as! MyFeedsViewController
//
        // Do any additional setup after loading the view.
    }


    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
