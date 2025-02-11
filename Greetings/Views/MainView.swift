//
//  MainView.swift
//  Greetings
//
//  Created by Arthur Danta on 09/02/25.
//

import SwiftUI

// Portrait = Compact width, regular height
// iPad = Regular width, regular height

struct MainView: View {
    @Environment(\.horizontalSizeClass) var horizontalSizeClass
    @Environment(\.verticalSizeClass) var verticalSizeClass
    
    var isPortrait: Bool {
        horizontalSizeClass == .compact && verticalSizeClass == .regular
    }
    
    var isIPad: Bool {
        horizontalSizeClass == .regular && verticalSizeClass == .regular
    }
    
    @Binding var language: String
    @Binding var layoutDirection: String
    
    var body: some View {
        // Portrait Mode ?
        if isPortrait || isIPad {
            NavigationStack {
                GreetingsView()
                    .toolbar {
                        ToolbarItem(placement: .topBarTrailing) {
                            LanguageOptionsTapView(language: $language, layoutDirection: $layoutDirection)
                        }
                    }
            }
        } else {
            // Landscape Mode ?
            NavigationStack {
                LandscapeGreetingView()
                    .toolbar {
                        ToolbarItem(placement: .topBarTrailing) {
                            LanguageOptionsTapView(language: $language, layoutDirection: $layoutDirection)
                        }
                    }
            }
        }
    }
}

#Preview {
    MainView(language: .constant("en"), layoutDirection: .constant(LEFT_TO_RIGHT))
}
