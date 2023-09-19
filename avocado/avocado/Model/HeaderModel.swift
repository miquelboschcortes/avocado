//
//  HeaderModel.swift
//  avocado
//
//  Created by Miguel Bosch Cortés on 19/09/2023.
//

import SwiftUI

struct Header: Identifiable {
    var id = UUID()
    var image: String
    var headline: String
    var subheadline: String
}
