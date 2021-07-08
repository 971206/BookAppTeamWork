//
//  HomePageViewController.swift
//  BookAppTeamWork
//
//  Created by MacBook  on 08.07.21.
//

import UIKit

class HomePageViewController: BaseViewController {

    @IBOutlet weak var tableView: UITableView!
    private var dataSource: HomePageDataSource!
    private var viewModel: HomePageViewModelProtocol!
    private var newsManager: NewsManagerProtocol!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureDataSource()
        configireTableView()
    }
    
    private func configureDataSource() {
        newsManager = NewsManager()
        viewModel = HomePageViewModel(with: newsManager)
        dataSource = HomePageDataSource(with: tableView, viewModel: viewModel)
        dataSource.refresh()
        
    }
    
    private func configireTableView() {
        tableView.separatorStyle = .none
        tableView.registerNib(class: BestSellerCell.self)
    }
    
}
