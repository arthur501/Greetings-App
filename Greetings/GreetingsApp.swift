//
//  GreetingsApp.swift
//  Greetings
//
//  Created by Arthur Danta on 07/02/25.
//

import SwiftUI
import TipKit

@main
struct GreetingsApp: App {
    @AppStorage("language") var language:String = "en"
    @AppStorage("languageDirectionString") var languageDirectionString: String = LEFT_TO_RIGHT
    
    
    var layoutDirection: LayoutDirection {
        languageDirectionString == LEFT_TO_RIGHT ? .leftToRight : .rightToLeft
    }
    var body: some Scene {
        WindowGroup {
            MainView(language: $language, layoutDirection: $languageDirectionString)
                .environment(\.locale, Locale(identifier: language))
                .environment(\.layoutDirection, layoutDirection)
                .task {
                    // Configure and load your tips at app launch
                    try? Tips.configure([
                        .displayFrequency(.immediate),
                        .datastoreLocation(.applicationDefault)
                    ])
            }
        }
    }
}
