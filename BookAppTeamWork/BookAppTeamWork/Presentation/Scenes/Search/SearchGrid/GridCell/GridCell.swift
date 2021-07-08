//
//  GridCell.swift
//  BookAppTeamWork
//
//  Created by Mac User on 7/8/21.
//

import UIKit

class GridCell: UICollectionViewCell {

    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var newsImg: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    func configureGrid(with item: News) {
        let url = URL(string: item.imageUrl ?? "")
        newsImg.kf.setImage(with: url)
        titleLabel.text = item.title
    }
}
