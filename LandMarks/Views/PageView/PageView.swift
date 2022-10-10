//
//  SwiftUIView.swift
//  LandMarks
//
//  Created by Daniel Kubong on 10/1/22.
//

import SwiftUI

struct PageView<Page: View>: View {
    var pages: [Page]
    @State private var currentPage = 0
    
    
    var body: some View {
        VStack {
            PageViewController(pages: pages, currentPage: $currentPage)
            Text("Current Page: \(currentPage)")
        }
    }
}

struct PageView_Previews: PreviewProvider {
    static var previews: some View {
        PageView(pages: ModelData().features.map{
            FeaturedCard(landmark: $0)
        })
        .aspectRatio(3 / 2, contentMode: .fit)
    }
}
