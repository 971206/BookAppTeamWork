//
//  NewsList.swift
//  AniMekvabidze40News
//
//  Created by Mac User on 6/24/21.
//

import Foundation

struct NewsList: Codable {
    
    let newsList: [News]
    
    enum CodingKeys: String, CodingKey {
        case newsList = "List"
    }
}
