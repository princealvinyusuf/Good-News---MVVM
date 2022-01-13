//
//  Webservice.swift
//  Good News
//
//  Created by Prince Alvin Yusuf on 13/01/22.
//

import Foundation

class Webservice {
    
    func getArticles(url: URL, completion: @escaping ([Article]?) -> ()) {
        
        URLSession.shared.dataTask(with: url) {
            data, response, error in
            
            if let error = error {
                print(error.localizedDescription)
                completion(nil)
            } else if let safeData = data {
                let article = try? JSONDecoder().decode(ArticleList.self, from: safeData)
                
                if let safeArticle = article {
                    completion(safeArticle.articles)
                }
                
                print(article?.articles)
            }
        }.resume()
    }
}
