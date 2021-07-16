//
//  MyFeedsViewController.swift
//  BookAppTeamWork
//
//  Created by Mac User on 7/16/21.
//

import UIKit

class MyFeedsViewController: BaseViewController {

   
    @IBOutlet weak var collectionView: UICollectionView!
    @IBOutlet weak var v1: UIView!
    @IBOutlet weak var v2: UIView!
    @IBOutlet weak var v3: UIView!
    @IBOutlet weak var tableView: UITableView!
    
    private var TableDataSource: FeedDataSourse!
    private var CollectionDataSource: MyFeedDataSource!

    private var newsManager: NewsManagerProtocol!

    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupLayout()
        
        configureNews()
        
        var array = [v1, v2, v3]
        for x in array {  x?.layer.cornerRadius = 10  }
        
    }
    
    private func setupLayout() {
        tableView.registerNib(class: MyFeedsCell.self)
        collectionView.registerNib(class: FeedCell.self)
    }
    
    private func configureNews() {
        newsManager = NewsManager()
        TableDataSource = FeedDataSourse(with: tableView, manager: newsManager)
        CollectionDataSource = MyFeedDataSource(with: collectionView, manager: newsManager)
        
    }

}
