//
//  ProfileHost.swift
//  LandMarks
//
//  Created by Daniel Kubong on 9/5/22.
//

import SwiftUI

struct ProfileHost: View {
    @State private var draftProfile = Profile.default
    
    
    var body: some View {
        VStack(alignment: .leading, spacing: 20) {
            
            ProfileSummary(profile: draftProfile)

        }
        .padding()
    }
}

struct ProfileHost_Previews: PreviewProvider {
    static var previews: some View {
        ProfileHost()
    }
}
