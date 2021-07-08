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
        let cell = collectionView.deque(GridCell.self, for: indexPath)
        cell.configureGrid(with: newsList[indexPath.row])
        return UICollectionViewCell()
    }
    
    
    
}

extension GridDataSource: UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: collectionView.frame.width / 2, height: collectionView.frame.height)
    }

    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 10
    }

    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        return 10
    }

    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        return UIEdgeInsets(top: 0, left: 16, bottom: 0, right: 16)
    }

    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        print(#function)
    }
}



