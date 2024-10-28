//
//  Untitled.swift
//  Belarus
//
//  Created by aaa on 25/10/2024.
//

import SwiftUI

struct AdView: View {
    @State private var ads: [Ad] = [
        Ad(title: "Поддержка демократических сил", content: "Стань частью движения", imageName: "protest_background1"),
        Ad(title: "Помощь политзаключённым", content: "Поддержи наших героев", imageName: "protest_background2")
    ]
    
    var body: some View {
        TabView {
            ForEach(ads) { ad in
                VStack {
                    Text(ad.title)
                        .font(.headline)
                        .padding(.top)
                    
                    Text(ad.content)
                        .padding()
                    
                    Image(ad.imageName)
                        .resizable()
                        .scaledToFit()
                        .frame(height: 300)
                        .clipped()
                }
                .padding()
                .background(Color.white.opacity(0.9))
                .cornerRadius(10)
                .shadow(radius: 5)
                .padding()
            }
        }
        .tabViewStyle(PageTabViewStyle())
        .indexViewStyle(PageIndexViewStyle())
        .navigationTitle("Реклама")
    }
}

struct Ad: Identifiable {
    let id = UUID()
    let title: String
    let content: String
    let imageName: String
}
