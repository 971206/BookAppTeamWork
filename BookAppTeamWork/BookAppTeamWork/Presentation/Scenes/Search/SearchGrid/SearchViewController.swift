//
//  SearchViewController.swift
//  BookAppTeamWork
//
//  Created by macuser on 08.07.21.
//

import UIKit

class SearchViewController: BaseViewController {

    @IBOutlet weak var collectionView: UICollectionView!
    private var dataSource: GridDataSource!
    private var newsManager: NewsManagerProtocol!
    @IBOutlet weak var profileBtn: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupLayout()
        configureNews()
        profileBtn.layer.cornerRadius = 20
    }
    
    private func setupLayout() {
        collectionView.registerNib(class: GridCell.self)
    }
    
    private func configureNews() {
        newsManager = NewsManager()
        dataSource = GridDataSource(with: collectionView, manager: newsManager)
        
        
    }
    
   
    


}

