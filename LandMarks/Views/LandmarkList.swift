//
//  LandmarkList.swift
//  LandMarks
//
//  Created by Daniel Kubong on 7/13/22.
//

import SwiftUI

struct LandmarkList: View {
    var body: some View {
        
        List(landmarks) { landmark in
            LandmarkRow(landmark: landmark)
        }
        
    }
}

struct LandmarkList_Previews: PreviewProvider {
    static var previews: some View {
        LandmarkList()
    }
}
