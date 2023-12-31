//
//  Item.swift
//  BaseSwiftUI
//
//  Created by Kai on 22/12/2023.
//

import Foundation
import SwiftData

@Model
final class Item {
    var timestamp: Date
    
    init(timestamp: Date) {
        self.timestamp = timestamp
    }
}
