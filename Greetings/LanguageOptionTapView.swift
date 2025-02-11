//
//  LanguageOptionTapView.swift
//  Greetings
//
//  Created by Arthur Danta on 11/02/25.
//

import SwiftUI

struct LanguageOptionsTapView: View {
    @Binding var language: String
    @Binding var layoutDirection: String
    var body: some View {
        Menu {
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
        } label: {
            Image(systemName: "gearshape.fill")
                .foregroundStyle(.black)
        }
            
    }
}

#Preview {
    LanguageOptionsTapView(language: .constant("en"), layoutDirection: .constant(LEFT_TO_RIGHT))
}
