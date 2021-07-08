//
//  GridCell.swift
//  BookAppTeamWork
//
//  Created by macuser on 08.07.21.
//


import UIKit
import  Kingfisher

class GridCell: UITableViewCell {

    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var newsImg: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func configure(with item: News) {
        let url = URL(string: item.imageUrl ?? "")
        newsImg.kf.setImage(with: url)
        titleLabel.text = item.title
    }
}
