//
//  FactModel.swift
//  avocado
//
//  Created by Miguel Bosch Cortés on 20/09/2023.
//

import SwiftUI

struct Fact: Identifiable {
    var id = UUID()
    var image: String
    var content: String
}
