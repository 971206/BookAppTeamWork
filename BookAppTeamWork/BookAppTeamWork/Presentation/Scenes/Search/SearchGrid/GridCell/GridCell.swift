//
//  GridCell.swift
//  BookAppTeamWork
//
//  Created by Mac User on 7/8/21.
//

import UIKit

class GridCell: UICollectionViewCell {

    @IBOutlet weak var cellView: UIView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var newsImg: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        cellView.layer.cornerRadius = 10
        newsImg.layer.cornerRadius = 4
        
    }

    func configureGrid(with item: News) {
        let url = URL(string: item.imageUrl ?? "")
        newsImg.kf.setImage(with: url)
        titleLabel.text = item.title
    }
}
