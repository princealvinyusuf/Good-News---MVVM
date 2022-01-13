//
//  Article.swift
//  Good News
//
//  Created by Prince Alvin Yusuf on 13/01/22.
//

import Foundation

struct ArticleList: Decodable {
    let articles: [Article]
}

struct Article: Decodable {
    let title: String
    let description: String
    
}
