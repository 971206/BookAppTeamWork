//
//  SearchDataSource.swift
//  BookAppTeamWork
//
//  Created by Mac User on 7/8/21.
//

import UIKit

class SearchDataSource: NSObject, UITableViewDataSource {
    
    private var tableView: UITableView!

    private var newsManager: NewsManagerProtocol!
    private var coordinator: CoordinatorProtocol!

    private var newsList = [News]()
    
    init(with tableView: UITableView, manager: NewsManagerProtocol, coordinator: CoordinatorProtocol) {
        super.init()
        
        self.tableView = tableView
        self.tableView.dataSource = self
        self.tableView.delegate = self
        self.newsManager = manager
        refresh()
    }
    
    func refresh() {
        newsManager.fetchNews { [weak self ]news in
            
            DispatchQueue.main.async {
                self?.newsList = news.map{$0}
                self?.tableView.reloadData()
            }
        }
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return  newsList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.deque(GridCell.self, for: indexPath)
        cell.configure(with: newsList[indexPath.row])
        return cell
    }
    
    
    
}
    
extension SearchDataSource: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("tap to open map")
    }
}

