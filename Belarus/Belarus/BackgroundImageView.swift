//
//  BackgroundImageView.swift
//  Belarus
//
//  Created by aaa on 27/10/2024.
//

import SwiftUI

struct BackgroundImageView<Content: View>: View {
    let imageName: String
    let content: Content

    init(imageName: String, @ViewBuilder content: () -> Content) {
        self.imageName = imageName
        self.content = content()
    }

    var body: some View {
        ZStack {
            Image(imageName)
                .resizable()
                .scaledToFill()
                .edgesIgnoringSafeArea(.all)
                .opacity(0.3) // Настраиваем прозрачность фона
            content
                .padding()
                .background(Color.white.opacity(0.8))
                .cornerRadius(10)
        }
    }
}
