//
//  VerticalTitleView.swift
//  Greetings
//
//  Created by Arthur Danta on 09/02/25.
//

import SwiftUI

struct VerticalTitleView: View {
    @State private var subtitle: LocalizedStringKey = "Exploring IOS Programming"
    var body: some View {
        VStack(alignment: .leading) {
            GreetingsTextView(subtitle: $subtitle)
            
            
            RotatableCircleView()
            
            Spacer()
            
        }
        .padding(.vertical)
    }
}

#Preview {
    VerticalTitleView()
}
