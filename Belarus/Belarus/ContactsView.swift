//
//  Untitled.swift
//  Belarus
//
//  Created by aaa on 25/10/2024.
//

import SwiftUI

struct ContactsView: View {
    @State private var contacts: [SupportOrganization] = [
        SupportOrganization(name: "Белорусский фонд", description: "Помощь всем нуждающимся", contact: "Контакты: +375 29 123 45 67")
    ]
    
    var body: some View {
        ScrollView {
            VStack {
                ForEach(contacts) { contact in
                    VStack(alignment: .leading) {
                        Text(contact.name)
                            .font(.headline)
                        Text(contact.contact)
                            .font(.subheadline)
                    }
                    .padding()
                    .background(Color.white.opacity(0.8))
                    .cornerRadius(10)
                }
            }
            .padding()
        }
        .navigationTitle("Контакты")
    }
}
