

import Foundation

struct OnBoarding: Codable {
    var imageUrl: String?
    var text: String?
    var secondText: String?

    enum CodingKeys: String, CodingKey {
        case text, secondText
        case imageUrl = "image_url"
        
    }
    
}
