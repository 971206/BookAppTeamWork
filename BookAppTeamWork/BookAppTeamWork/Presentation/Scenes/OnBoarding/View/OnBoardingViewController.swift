//
//  OnBoardingViewController.swift
//  BookAppTeamWork
//
//  Created by AltaSoftware MacMINI on 7/8/21.
//

import UIKit

class OnBoardingViewController: UIViewController {

    @IBOutlet weak var pageControl: UIPageControl!
    @IBOutlet weak var collectionView: UICollectionView!
    private var viewModel: OnBoardingViewModelProtocol!
    private var dataSource: OnBoardingDataSource!
    private var apiManager: OnBoardingManagerProtocol!
    var i: Int = 0
    var isLoading: Bool = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        collectionView.registerNib(class: OnBoardingCell.self)
        configureViewModel()
        self.navigationController?.navigationBar.isHidden = true
        
        
    }
    
    override var preferredStatusBarStyle: UIStatusBarStyle {
        return .lightContent
    }
    
    
    
    private func configureViewModel() {
        apiManager = OnBoardingManager()
        viewModel = OnBoardingsViewModel(with: apiManager!, navigationController: self.navigationController, pageControl: self.pageControl)
        dataSource = OnBoardingDataSource(with: collectionView,
                                    viewModel: viewModel, pageControl: pageControl)
        
        dataSource.refresh()
    }
    

    
    func moveCollectionToFrame(contentOffset : CGFloat) {
        
        let frame: CGRect = CGRect(x : contentOffset ,y : self.collectionView.contentOffset.y ,width : self.collectionView.frame.width,height : self.collectionView.frame.height)
        self.collectionView.scrollRectToVisible(frame, animated: true)
    }
    
//    @IBAction func next(_ sender: Any) {
//
//        if i < InfoDataSource.itemsCount - 1 {
//            i += 1
//            let collectionBounds = self.collectionView.bounds
//            let contentOffset = CGFloat(floor(self.collectionView.contentOffset.x + collectionBounds.size.width))
//            self.moveCollectionToFrame(contentOffset: contentOffset)
//
//        } else {
//            coordinator?.proceedToSecondVCwithNext()
//        }
//
//    }
}

