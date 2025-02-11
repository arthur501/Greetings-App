//
//  DataItemModel.swift
//  Greetings
//
//  Created by Arthur Danta on 08/02/25.
//

import SwiftUI

struct DataItemModel: Identifiable {
    let id = UUID()
    let text:LocalizedStringKey
    let color:Color
}
