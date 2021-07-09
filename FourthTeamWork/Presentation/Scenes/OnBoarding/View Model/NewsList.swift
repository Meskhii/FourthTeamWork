//
//  NewsList.swift
//  FourthTeamWork
//
//  Created by Ana Mepisashvili on 08.07.21.
//


import Foundation

struct NewsList: Codable {
    
    let newsList: [News]
    
    enum CodingKeys: String, CodingKey {
        case newsList = "List"
    }
}
