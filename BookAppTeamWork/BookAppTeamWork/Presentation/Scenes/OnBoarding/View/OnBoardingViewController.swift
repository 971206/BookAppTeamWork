//
//  OnBoardingViewController.swift
//  BookAppTeamWork
//
//  Created by AltaSoftware MacMINI on 7/8/21.
//

import UIKit

class OnBoardingViewController: BaseViewController {

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
        collectionView.registerNib(class: LastCell.self)

        configureViewModel()
        self.navigationController?.navigationBar.isHidden = true
        
        
    }
    override func viewWillAppear(_ animated: Bool) {

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
    
}

