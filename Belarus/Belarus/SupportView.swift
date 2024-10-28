//
//  Untitled.swift
//  Belarus
//
//  Created by aaa on 25/10/2024.
//

import SwiftUI

struct SupportView: View {
    @State private var organizations: [SupportOrganization] = [
        SupportOrganization(name: "Белорусская диаспора", description: "Помощь беженцам в Польше", contact: "Контакты: +48 123 456 789"),
        SupportOrganization(name: "Свобода в изгнании", description: "Юридическая и социальная помощь", contact: "Контакты: freedom@exile.org")
    ]
    
    var body: some View {
        ScrollView {
            VStack {
                ForEach(organizations) { org in
                    VStack(alignment: .leading) {
                        Text(org.name)
                            .font(.headline)
                        Text(org.description)
                        Text(org.contact)
                            .font(.subheadline)
                            .foregroundColor(.gray)
                    }
                    .padding()
                    .background(Color.white.opacity(0.8))
                    .cornerRadius(10)
                }
            }
            .padding()
        }
        .navigationTitle("Помощь беженцам")
    }
}

struct SupportOrganization: Identifiable {
    let id = UUID()
    let name: String
    let description: String
    let contact: String
}
