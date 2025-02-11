//
//  BackgroundView.swift
//  Greetings
//
//  Created by Arthur Danta on 08/02/25.
//

import SwiftUI

/// This is a background view which contains a Linear Gradient
struct BackgroundView: View {
    var body: some View {
        LinearGradient(colors: [.myBlue1,.myBlue2], startPoint: .topLeading, endPoint: .bottomTrailing)
            .opacity(1)
            .ignoresSafeArea()
    }
}

#Preview {
    BackgroundView()
}
