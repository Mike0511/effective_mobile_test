//
//  Category.swift
//  EffectiveMobileTest
//
//  Created by Mikhail Tantsura on 16.12.22.
//

import SwiftUI

struct Category: Identifiable {
    var id: String { name }
    let name: String
    let image: Image
    var isSelected: Bool
}
