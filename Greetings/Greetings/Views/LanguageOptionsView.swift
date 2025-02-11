//
//  LanguageOptionsView.swift
//  Greetings
//
//  Created by Arthur Danta on 10/02/25.
//

import SwiftUI

struct LanguageOptionsView: View {
    @Binding var language: String
    @Binding var layoutDirection: String
    var body: some View {
        Image(systemName: "gearshape.fill")
            .contextMenu {
                Button("English") {
                    language = "en"
                    layoutDirection = LEFT_TO_RIGHT
                }
                Button("Spanish") {
                    language = "es"
                    layoutDirection = LEFT_TO_RIGHT
                }
                Button("Portuguese-BR") {
                    language = "pt"
                    layoutDirection = LEFT_TO_RIGHT
                }
                Button("Arabic") {
                    language = "ar"
                    layoutDirection = RIGHT_TO_LEFT
                }
            }
            
    }
}

#Preview {
    LanguageOptionsView(language: .constant("en"), layoutDirection: .constant(LEFT_TO_RIGHT))
}
