//
//  BestSellerItem.swift
//  BookAppTeamWork
//
//  Created by MacBook  on 08.07.21.
//

import UIKit
import Kingfisher

class BestSellerItem: UICollectionViewCell {
    @IBOutlet weak var imagePoster: UIImageView!
    @IBOutlet weak var shadowLayer: UIView!
    @IBOutlet weak var labelTitle: UILabel!
    @IBOutlet weak var labelSmallDescription: UILabel!
    @IBOutlet weak var imageStars: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    func configure(with item: News) {
        let posterURL = URL(string: item.imageUrl ?? "")
        imagePoster.kf.setImage(with: posterURL)
        self.labelTitle.text = item.title
        self.labelSmallDescription.text = item.content
    }

}
