//
//  BestSellerCell.swift
//  BookAppTeamWork
//
//  Created by MacBook  on 08.07.21.
//

import UIKit

class BestSellerCell: UITableViewCell {

    @IBOutlet weak var collectionView: UICollectionView!
    
    private var newsList: [News]?
    override func awakeFromNib() {
        super.awakeFromNib()
        setUpCollectionView()
        
    }
    
    func setUpCollectionView() {
       collectionView.dataSource = self
       collectionView.delegate = self
       collectionView.showsHorizontalScrollIndicator = false
       collectionView.contentInset = UIEdgeInsets(top: 0, left: 16, bottom: 0, right: 16)
       collectionView.registerNib(class: BestSellerItem.self)
       let layout = UICollectionViewFlowLayout()
       layout.itemSize = CGSize(width: 122, height: 275)
       layout.scrollDirection = .horizontal
       collectionView.collectionViewLayout = layout
       
   }
    
    func configureNews(news: [News]?) {
        newsList = news
        collectionView.reloadData()        
    }
 
}


extension BestSellerCell:  UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return newsList?.count ?? 0
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.deque(BestSellerItem.self, for: indexPath)
        if let news = newsList?[indexPath.row] {
            cell.configure(with: news)
        }
        return cell
    }
}

extension BestSellerCell: UICollectionViewDelegate {
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: collectionView.frame.width / 3, height: collectionView.frame.height)
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 16
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        return UIEdgeInsets(top: 0, left: 16, bottom: 0, right: 16)
    }

}
