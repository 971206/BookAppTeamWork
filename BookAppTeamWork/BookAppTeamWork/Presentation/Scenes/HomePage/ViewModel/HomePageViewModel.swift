//
//  HomePageViewModel.swift
//  BookAppTeamWork
//
//  Created by MacBook  on 08.07.21.
//

import UIKit

protocol HomePageViewModelProtocol: AnyObject {
    func fetchNews(completion: @escaping (([News]) -> Void))
    init(with newsManager: NewsManagerProtocol)
}

final class HomePageViewModel: HomePageViewModelProtocol {

    private var newsManager: NewsManagerProtocol!
    
    
    init(with newsManager: NewsManagerProtocol) {
        self.newsManager = newsManager
    }
    
    func fetchNews(completion: @escaping (([News]) -> Void)) {
        newsManager.fetchNews { news in
            let newsList = news
            completion(newsList)
            
        }
    }
}
