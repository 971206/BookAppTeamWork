

import Foundation
import Kingfisher

struct OnBoardingViewModel : Codable{
    
    private var infos: OnBoarding
    
    init(infos: OnBoarding) {
        self.infos = infos
        
    }
    
    var imageUrl: URL? {
        URL(string: infos.imageUrl ?? "")
    }
    
    var text: String {
        infos.text ?? ""
    }
    
    var secondText: String {
        infos.secondText ?? ""
    }
}
