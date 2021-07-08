//
//  DetailsViewController.swift
//  BookAppTeamWork
//
//  Created by AltaSoftware MacMINI on 7/8/21.
//

import UIKit

class DetailsViewController: BaseViewController {

    @IBOutlet weak var collectionView: UICollectionView!
    var details: News?

    @IBOutlet weak var detailField: UITextView!
    override func viewDidLoad() {
        super.viewDidLoad()

    
        configureDetails()
}

private func configureDetails() {
    guard let detail = details else {return}
    
    detailField.text = detail.content
 
    
}

  

}
