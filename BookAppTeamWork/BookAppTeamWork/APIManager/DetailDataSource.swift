//
//  DetailDataSource.swift
//  BookAppTeamWork
//
//  Created by AltaSoftware MacMINI on 7/8/21.
//

import UIKit

class DetailDataSource: NSObject, UICollectionViewDataSource, UICollectionViewDelegate, UICollectionViewDelegateFlowLayout  {
    
    private var collectionView: UICollectionView!
    private var viewModel: HomePageViewModelProtocol!
    private var homeViewModel = [News]()

    init(with collectionView: UICollectionView, viewModel: HomePageViewModelProtocol) {
        super.init()
        
        self.collectionView = collectionView
        self.collectionView.dataSource = self
        self.collectionView.delegate = self
        
        self.viewModel = viewModel

    }
    
    func refresh() {
        viewModel.fetchNews{ viewModels in
            self.homeViewModel.append(contentsOf: viewModels)
            
            DispatchQueue.main.async {
                self.collectionView.reloadData()
//                OnBoardingDataSource.itemsCount = self.homeViewModel.count
            }
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.deque(DetailImageCell.self, for: indexPath)
        
        cell.configure(with: homeViewModel[indexPath.row])
        
        return cell
    }
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
        
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        let count = homeViewModel.count
        return count
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let width = collectionView.frame.width
        let height = collectionView.frame.height
        
        return CGSize(width: width, height: height)
        
    }
    
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        return UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 0)
    }
    
    
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return  0
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        return 0
        
    }
    
}

