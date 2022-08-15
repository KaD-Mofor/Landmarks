//
//  RotatedBagdeSymbol.swift
//  LandMarks
//
//  Created by Daniel Kubong on 8/14/22.
//

import SwiftUI

struct RotatedBagdeSymbol: View {
    let angle: Angle
    
    var body: some View {
        BagdeSymbol()
            .padding(-60)
            .rotationEffect(angle, anchor: .bottom)
    }
}

struct RotatedBagdeSymbol_Previews: PreviewProvider {
    static var previews: some View {
        RotatedBagdeSymbol(angle: Angle(degrees: 5))
    }
}
