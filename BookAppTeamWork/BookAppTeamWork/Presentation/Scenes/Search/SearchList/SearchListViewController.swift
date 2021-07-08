//
//  SearchListViewController.swift
//  BookAppTeamWork
//
//  Created by macuser on 08.07.21.
//


import UIKit

class SearchListViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    private var dataSource: ListDataSource!
    private var newsManager: NewsManagerProtocol!
    //private var coordinator: CoordinatorProtocol!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        setupLayout()
        configureNews()
    }
    
    private func setupLayout() {
        tableView.registerNib(class: ListCell.self)
    }
    
    private func configureNews() {
        newsManager = NewsManager()
        dataSource = ListDataSource(with: tableView, manager: newsManager)
        
        
    }

}
