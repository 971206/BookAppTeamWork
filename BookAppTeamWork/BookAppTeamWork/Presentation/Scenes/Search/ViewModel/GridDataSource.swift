//
//  SearchDataSource.swift
//  BookAppTeamWork
//
//  Created by Mac User on 7/8/21.
//

import UIKit

class GridDataSource: NSObject, UICollectionViewDataSource {
   
    
    private var collectionView: UICollectionView!

    private var newsManager: NewsManagerProtocol!

    private var newsList = [News]()
    
    init(with collectionView: UICollectionView, manager: NewsManagerProtocol) {
        super.init()
        
        self.collectionView = collectionView
        self.collectionView.dataSource = self
        self.collectionView.delegate = self
        self.newsManager = manager
        refresh()
    }
    
    func refresh() {
        newsManager.fetchNews { [weak self ]news in
            
            DispatchQueue.main.async {
                self?.newsList = news.map{$0}
                self?.collectionView.reloadData()
            }
        }
    }
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return newsList.count

    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
      //  let cell = tableView.deque(GridCell.self, for: indexPath)
       // cell.configure(with: newsList[indexPath.row])
        return UICollectionViewCell()
    }
    
    
    
}
    
extension GridDataSource: UICollectionViewDelegate {
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        print(#function)
    }
}


