//
//  SearchListViewController.swift
//  BookAppTeamWork
//
//  Created by macuser on 08.07.21.
//


import UIKit

class SearchListViewController: BaseViewController {

    @IBOutlet weak var tableView: UITableView!
    private var dataSource: ListDataSource!
    private var newsManager: NewsManagerProtocol!

    @IBOutlet weak var latestBtn: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupLayout()
        configureNews()
        latestBtn.layer.cornerRadius = 21
    }
    
    private func setupLayout() {
        tableView.registerNib(class: ListCell.self)
    }
    
    private func configureNews() {
        newsManager = NewsManager()
        dataSource = ListDataSource(with: tableView, manager: newsManager)
        
        
    }

    @IBAction func onGrid(_ sender: Any) {
        navigationController?.popViewController(animated: true)
    }
    
    
}
