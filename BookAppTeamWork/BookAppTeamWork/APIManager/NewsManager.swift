//
//  NewsManager.swift
//  BookAppTeamWork
//
//  Created by MacBook  on 08.07.21.
//

import Foundation

protocol NewsManagerProtocol: AnyObject {
    func fetchNews(completion: @escaping (([News]) -> Void))
}

class NewsManager: NewsManagerProtocol {

    func fetchNews(completion: @escaping (([News]) -> Void)) {
        let url = "https://imedinews.ge/ge/~/api/getnews/get?skipCount=28&portion=20&categoryId=17&pageId=59"
        NetworkManager.shared.get(url: url) { (result: Result<NewsList, Error>) in
            switch result {
            case .success(let response):
                completion(response.newsList)
            case .failure(let error):
                print(error)
            }
        }
    }
}
