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
        let url = "https://run.mocky.io/v3/1f9603c9-34c9-49e8-86ac-a47bf6683dbb"
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
