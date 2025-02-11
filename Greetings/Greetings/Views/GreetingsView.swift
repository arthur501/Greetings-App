//
//  ContentView.swift
//  Greetings
//
//  Created by Arthur Danta on 07/02/25.
//

import SwiftUI

struct GreetingsView: View {
    var body: some View {
        ZStack {
            BackgroundView()
            
            VStack(alignment: .leading) {
                TitleView()
                
                Spacer()
                
                MessagesView()
                
                Spacer()
                Spacer()
            }
            .padding()
        }
    }
}

#Preview {
    GreetingsView()
}
