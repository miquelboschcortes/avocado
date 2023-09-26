//
//  RipeningStages.swift
//  avocado
//
//  Created by Miguel Bosch Cortés on 19/09/2023.
//

import SwiftUI

struct RipeningStagesView: View {
    
    // MARK: - PROPERTIES
    var ripeningStages: [Ripening] = ripeningData
    
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            
            VStack {
                
                Spacer()
                
                HStack(alignment: .center, spacing: 25) {
                    ForEach(ripeningStages) { stage in
                        RipeningView(ripening: stage)
                    }
                }
                .padding(.vertical)
                .padding(.horizontal, 25)
                
                Spacer()
            }
        }
        .edgesIgnoringSafeArea(.all)
    }
}

struct RipeningStages_Previews: PreviewProvider {
    static var previews: some View {
        RipeningStagesView()
    }
}
