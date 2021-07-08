//
//  ListCell.swift
//  BookAppTeamWork
//
//  Created by macuser on 08.07.21.
//


import UIKit
import  Kingfisher

class ListCell: UITableViewCell {

    @IBOutlet weak var img: UIImageView!
    
    @IBOutlet weak var title: UILabel!
    
    @IBOutlet weak var desc: UILabel!
    
    @IBOutlet weak var content: UILabel!
    
    
    @IBOutlet weak var greenB: UIButton!
    
    @IBOutlet weak var whiteB: UIButton!
    override func awakeFromNib() {
        super.awakeFromNib()
        greenB.layer.cornerRadius = 15
        whiteB.layer.cornerRadius = 15
        img.layer.cornerRadius = 10

        
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

    }
    
    func configure(with item: News) {
        let url = URL(string: item.imageUrl ?? "")
        img.kf.setImage(with: url)
        title.text = item.title
        desc.text = item.title
        content.text = item.content
    }
}
