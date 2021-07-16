//
//  MyFeedsCell.swift
//  BookAppTeamWork
//
//  Created by Mac User on 7/16/21.
//

import UIKit

class MyFeedsCell: UITableViewCell {

    @IBOutlet weak var img: UIImageView!
    
    @IBOutlet weak var title: UILabel!
    
    @IBOutlet weak var smallImg: UIImageView!
    
    @IBOutlet weak var dateLabel: UILabel!
    
    @IBOutlet weak var nameLabel: UILabel!
    
   
    override func awakeFromNib() {
        super.awakeFromNib()
      
        smallImg.layer.cornerRadius = 16
//        smallImg.layer.borderWidth = 2
//        smallImg.layer.borderColor = UIColor.white.cgColor
        img.layer.cornerRadius = 41

        
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

    }
    
    func configure(with item: News) {
        let url = URL(string: item.imageUrl ?? "")
        img.kf.setImage(with: url)
        smallImg.kf.setImage(with: url)
        title.text = item.title
        nameLabel.text = item.title
        dateLabel.text = item.date
        
    }
    
}
