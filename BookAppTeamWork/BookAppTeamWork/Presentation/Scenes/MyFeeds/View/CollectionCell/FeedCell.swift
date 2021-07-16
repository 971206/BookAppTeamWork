//
//  FeedCell.swift
//  BookAppTeamWork
//
//  Created by Mac User on 7/16/21.
//

import UIKit

class FeedCell: UICollectionViewCell {

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    //        smallImg.layer.borderWidth = 2
//        smallImg.layer.borderColor = UIColor.white.cgColor
        img.layer.cornerRadius = 38
    }

    @IBOutlet weak var img: UIImageView!
    
    @IBOutlet weak var title: UILabel!
    
 
    
   
    
    func configure(with item: News) {
        let url = URL(string: item.imageUrl ?? "")
        img.kf.setImage(with: url)
        title.text = item.title
        
    }
    
}
