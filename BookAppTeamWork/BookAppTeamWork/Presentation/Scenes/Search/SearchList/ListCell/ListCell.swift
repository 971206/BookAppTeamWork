//
//  ListCell.swift
//  BookAppTeamWork
//
//  Created by macuser on 08.07.21.
//


import UIKit
import  Kingfisher

class ListCell: UITableViewCell {

    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    @IBOutlet weak var img: UIImageView!
    
    @IBOutlet weak var title: UILabel!
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func configure(with item: News) {
        let url = URL(string: item.imageUrl ?? "")
        img.kf.setImage(with: url)
        title.text = item.title
    }
}
