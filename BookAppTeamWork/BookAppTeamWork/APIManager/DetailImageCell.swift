//
//  DetailImageCell.swift
//  BookAppTeamWork
//
//  Created by AltaSoftware MacMINI on 7/8/21.
//

import UIKit
import Kingfisher

class DetailImageCell: UICollectionViewCell {

    @IBOutlet weak var detailImage: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    func configure(with item: News) {
        detailImage.kf.setImage(with: URL(string: item.imageUrl ?? ""))
       
    }
}

