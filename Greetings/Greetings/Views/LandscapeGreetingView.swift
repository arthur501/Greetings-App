//
//  LandscapeGreetingView.swift
//  Greetings
//
//  Created by Arthur Danta on 09/02/25.
//

import SwiftUI

struct LandscapeGreetingView: View {
    var body: some View {
        ZStack {
            BackgroundView()
            
            HStack {
                VerticalTitleView()
                
                Spacer()
                
                MessagesView()
                
            }
            .padding()
        }
    }
}

#Preview {
    LandscapeGreetingView()
}
