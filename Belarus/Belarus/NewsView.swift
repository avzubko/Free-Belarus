//
//  Untitled.swift
//  Belarus
//
//  Created by aaa on 25/10/2024.
//

import SwiftUI

struct NewsView: View {
    @State private var newsList: [News] = [
        News(title: "Протесты в Минске", content: "Описание событий...", imageName: "protest_background2"),
        News(title: "Свободные демократические силы", content: "Подробнее о структурах...", imageName: "protest_background3")
    ]
    
    var body: some View {
        ScrollView {
            VStack {
                ForEach(newsList) { news in
                    NavigationLink(destination: NewsDetailView(news: news)) {
                        NewsRow(news: news)
                    }
                }
            }
            .padding()
        }
        .navigationTitle("Новости")
    }
}

struct NewsRow: View {
    var news: News
    
    var body: some View {
        VStack(alignment: .leading) {
            Text(news.title)
                .font(.headline)
            Text(news.content)
                .lineLimit(2)
            Image(news.imageName)
                .resizable()
                .scaledToFill()
                .frame(height: 200)
                .clipped()
        }
        .padding()
        .background(Color.white)
        .cornerRadius(10)
    }
}

struct News: Identifiable {
    let id = UUID()
    let title: String
    let content: String
    let imageName: String
}
