//
//  News.swift
//  AniMekvabidze40News
//
//  Created by Mac User on 6/24/21.
//

import Foundation

struct News: Codable {
    let title: String?
    let content: String?
    let imageUrl: String?
    let date: String?
    
    enum CodingKeys: String, CodingKey {
        case title = "Title"
        case content = "Content"
        case date = "FullDate"
        case imageUrl = "MediumCoverPhotoUrl"
    }
}
