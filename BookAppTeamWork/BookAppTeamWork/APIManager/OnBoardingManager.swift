//
//  OnBoardingManager.swift
//  BookAppTeamWork
//
//  Created by AltaSoftware MacMINI on 7/8/21.
//

import Foundation

protocol OnBoardingManagerProtocol: AnyObject {
    func fetchInfo(completion: @escaping ((Result<[OnBoarding], Error>) -> Void))
}

class OnBoardingManager: OnBoardingManagerProtocol {
    func fetchInfo(completion: @escaping ((Result<[OnBoarding], Error>) -> Void)) {
        let url = "https://run.mocky.io/v3/3c597760-1ebc-4136-a10f-d285c3343efb"
        NetworkManager.shared.get(url: url) { (result: Result<[OnBoarding], Error>) in
            switch result {
            case .success(let response):
                completion(.success(response))
            case .failure(let err):
                completion(.failure(err))
            }
        }
    }
}
