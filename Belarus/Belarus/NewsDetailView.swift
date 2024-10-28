//
//  Untitled.swift
//  Belarus
//
//  Created by aaa on 25/10/2024.
//

import SwiftUI

struct NewsDetailView: View {
    var news: News
    
    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 10) {
                Text(news.title)
                    .font(.largeTitle)
                    .padding(.bottom)
                
                Image(news.imageName)
                    .resizable()
                    .scaledToFill()
                    .frame(height: 300)
                    .clipped()
                
                Text(news.content)
                    .font(.body)
            }
            .padding()
        }
        .navigationTitle("Детали новости")
    }
}
