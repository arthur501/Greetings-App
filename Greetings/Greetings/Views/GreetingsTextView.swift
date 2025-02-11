//
//  GreetingsTextView.swift
//  Greetings
//
//  Created by Arthur Danta on 09/02/25.
//

import SwiftUI

struct GreetingsTextView: View {
    
    @Binding var subtitle: LocalizedStringKey
    
    let subtitles: [LocalizedStringKey] = [
        "Exploring IOS programming", "Learning how to bake", "Programming recipes", "A quest for knowledge"
    ]
    
    var body: some View {
        HStack {
            VStack(alignment: .leading, spacing: 0) {
                Text("Greetings")
                    .font(.largeTitle)
                    .fontWeight(.semibold)
                Text(subtitle)
                    .font(.headline)
                    .fontWeight(.thin)
            }
            .onTapGesture {
                // Change Caption
                subtitle = subtitles.randomElement() ?? LocalizedStringKey("Exploring IOS Programming")
            }
        }
    }
}
#Preview {
    GreetingsTextView(subtitle:  .constant( "Exploring IOS programming"))
}
