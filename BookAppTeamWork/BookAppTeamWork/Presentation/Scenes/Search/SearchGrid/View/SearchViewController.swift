//
//  ViewController.swift
//  BookAppTeamWork
//
//  Created by macuser on 08.07.21.
//

import UIKit

class SearchViewController: BaseViewController {

    @IBOutlet weak var tableView: UITableView!
    private var dataSource: SearchDataSource!
    private var newsManager: NewsManagerProtocol!
    //private var coordinator: CoordinatorProtocol!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        setupLayout()
        configureNews()
    }
    
    private func setupLayout() {
        tableView.registerNib(class: GridCell.self)
    }
    
    private func configureNews() {
        newsManager = NewsManager()
        dataSource = SearchDataSource(with: tableView, manager: newsManager, coordinator: coordinator as! CoordinatorProtocol)
        
        
    }
    


}

