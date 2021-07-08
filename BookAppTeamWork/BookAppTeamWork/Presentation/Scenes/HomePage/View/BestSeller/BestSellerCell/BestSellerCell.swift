//
//  BestSellerCell.swift
//  BookAppTeamWork
//
//  Created by MacBook  on 08.07.21.
//

import UIKit

class BestSellerCell: UITableViewCell {

    @IBOutlet weak var collectionView: UICollectionView!
    private var newsManager: NewsManagerProtocol!
    private var newsList: [News]?
    
    override func awakeFromNib() {
        super.awakeFromNib()
        setUpCollectionView()
        
    }
    
    func setUpCollectionView() {
       collectionView.dataSource = self
       collectionView.delegate = self
       collectionView.registerNib(class: BestSellerItem.self)
       collectionView.showsHorizontalScrollIndicator = false
       collectionView.contentInset = UIEdgeInsets(top: 0, left: 20, bottom: 0, right: 20)
       let layout = UICollectionViewFlowLayout()
       layout.itemSize = CGSize(width: 122, height: 275)
       layout.minimumLineSpacing = 25
       layout.scrollDirection = .horizontal
       collectionView.collectionViewLayout = layout
       
   }
    
    func fetchNewsList() {
        newsManager = NewsManager()
        newsManager.fetchNews { [weak self] news in
            self?.newsList = news
            DispatchQueue.main.async {
                self?.collectionView.reloadData()
            }
        }
    }
}


extension BestSellerCell:  UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return newsList?.count ?? 0
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.deque(BestSellerItem.self, for: indexPath)
        if let news = newsList?[indexPath.row] { cell.configure(with: news) }
        return cell
    }
}

extension BestSellerCell: UICollectionViewDelegate {
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: collectionView.frame.width / 3, height: collectionView.frame.height)
    }
}
