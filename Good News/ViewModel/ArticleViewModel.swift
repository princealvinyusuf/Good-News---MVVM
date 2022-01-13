//
//  ArticleViewModel.swift
//  Good News
//
//  Created by Prince Alvin Yusuf on 13/01/22.
//

import Foundation

struct ArticleListViewModel {
    let articles: [Article]
}

extension ArticleListViewModel {
    var numberOfSection: Int {
        return 1
    }
    
    func numberOfRowsInSection(section: Int) -> Int {
        return self.articles.count
    }
    
    func articleAtIndex(index: Int) -> ArticleViewModel {
        let article = self.articles[index]
        return ArticleViewModel(article)
    }
}

struct ArticleViewModel {
    private let article: Article
}

extension ArticleViewModel {
    init(_ article: Article) {
        self.article = article
    }
}

extension ArticleViewModel {
    var title: String {
        return self.article.title
    }
}

extension ArticleViewModel {
    var description: String {
        return self.article.description
    }
}
