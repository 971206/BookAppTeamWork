//
//  ViewController.swift
//  BookAppTeamWork
//
//  Created by macuser on 08.07.21.
//

import UIKit

class SearchViewController: BaseViewController {

    @IBOutlet weak var collectionVIew: UICollectionView!
    private var dataSource: GridDataSource!
    private var newsManager: NewsManagerProtocol!
    //private var coordinator: CoordinatorProtocol!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        setupLayout()
        configureNews()
    }
    
    private func setupLayout() {
        //collectionVIew.registerNib(class: GridCell.self)
    }
    
    private func configureNews() {
        newsManager = NewsManager()
        dataSource = GridDataSource(with: collectionVIew, manager: newsManager)
        
        
    }
    


}

