//
//  GreetingsTip.swift
//  Greetings
//
//  Created by Arthur Danta on 11/02/25.
//

import Foundation
import TipKit

struct GreetingsTip: Tip {
    var title: Text {
        Text("Click on text and disc")
    }
    var message: Text? {
        Text("Text will be randomly generated")
    }
    var asset: Image {
        Image(systemName: "figure.walk.motion")
    }
}
