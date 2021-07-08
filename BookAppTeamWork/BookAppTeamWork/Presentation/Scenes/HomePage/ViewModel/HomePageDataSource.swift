//
//  HomePageDataSource.swift
//  BookAppTeamWork
//
//  Created by MacBook  on 08.07.21.
//

import UIKit

class HomePageDataSource: NSObject, UITableViewDataSource, UITableViewDelegate {
    private var tableView: UITableView!
    private var viewModel: HomePageViewModelProtocol!
    var newsList: [News]?
    
    init(with tableView: UITableView, viewModel: HomePageViewModelProtocol) {
        super.init()
        self.tableView = tableView
        self.viewModel = viewModel
        self.tableView.dataSource = self
        self.tableView.delegate = self
        
    }
    
    func refresh() {
        viewModel.fetchNews { [weak self] newsList in
            guard let self = self else {return}
            self.newsList = newsList
            DispatchQueue.main.async {
                self.tableView.reloadData()

            }
        }
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 3
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        if indexPath.row == 0 {
            let cell = tableView.deque(TopPicksCell.self, for: indexPath)
        }
        if indexPath.row == 1 {
            let cell = tableView.deque(BestSellerCell.self, for: indexPath)
            cell.fetchNewsList()
        }
        if indexPath.row == 2 {
            let cell = tableView.deque(GenresCell.self, for: indexPath)
            cell.fetchNewsList()
        }
        
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        if indexPath.row == 0 {
            return 488
        }
        
        if indexPath.row == 1 {
            return 385
        }
        
        if indexPath.row == 2 {
            return 317
        }
        return 0
    }
    
}
