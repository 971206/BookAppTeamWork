//
//  OnBoardingCell.swift
//  BookAppTeamWork
//
//  Created by AltaSoftware MacMINI on 7/8/21.
//

import UIKit
import Kingfisher

class OnBoardingCell: UICollectionViewCell {

    @IBOutlet weak var welcomeImage: UIImageView!
    @IBOutlet weak var welcomeLabel: UILabel!
    @IBOutlet weak var secondTextLabel: UILabel!
   
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    func configure(with item: OnBoardingViewModel) {
        welcomeImage.kf.setImage(with: item.imageUrl)
        welcomeLabel.text = item.text
        secondTextLabel.text = item.secondText
    }
}
