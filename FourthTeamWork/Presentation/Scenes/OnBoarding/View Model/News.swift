//
//  News.swift
//  FourthTeamWork
//
//  Created by Ana Mepisashvili on 08.07.21.
//

import Foundation

struct News: Codable {
    let title: String?
    let content: String?
    let imageUrl: String?
    
    enum CodingKeys: String, CodingKey {
        case title = "Title"
        case content = "Content"
        case imageUrl = "MediumCoverPhotoUrl"
    }
}
