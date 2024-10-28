//
//  ContentView.swift
//  Belarus
//
//  Created by aaa on 25/10/2024.
//

import SwiftUI

struct MainView: View {
    var body: some View {
        NavigationView {
            ZStack {
                Image("protest_background1")
                    .resizable()
                    .scaledToFill()
                    .edgesIgnoringSafeArea(.all)
                
                VStack(spacing: 20) {
                    NavigationLink("Новости", destination: NewsView())
                    NavigationLink("Messenger", destination: AdView())
                    NavigationLink("Помощь беженцам", destination: SupportView())
                    NavigationLink("Контакты", destination: ContactsView())
                }
                .padding()
                .background(Color.white.opacity(0.8))
                .cornerRadius(10)
            }
            .navigationTitle("Главная")
        }
    }
}
