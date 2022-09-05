//
//  CategoryHome.swift
//  LandMarks
//
//  Created by Daniel Kubong on 9/3/22.
//

import SwiftUI

struct CategoryHome: View {
    //Create evironmentObject variable
    @EnvironmentObject var modelData: ModelData
    @State private var showingProfile = false
    
    var body: some View {
        //Add Navigation views and using with .navigationTile
        NavigationView {
            List {
                modelData.features[0].image
                    .resizable()
                    .scaledToFill()
                    .frame(height: 200)
                    .clipped()
                    .listRowInsets(EdgeInsets())
                
                
                ForEach(
                    modelData.categories.keys.sorted(), id: \.self) {
                        key in CategoryRow(categoryName: key, items: modelData.categories[key]!)
                    }
                    .listRowInsets(EdgeInsets())
            }
            .listStyle(.inset)
            .navigationTitle("Featured")
            .toolbar {
                Button {
                    showingProfile.toggle()
                } label: {
                    Label("User Profile", systemImage: "person.crop.circle")
                }
            }
            .sheet(isPresented: $showingProfile) {
                ProfileHost()
                    .environmentObject(modelData)
            }
        }
    }
}

struct CategoryHome_Previews: PreviewProvider {
    static var previews: some View {
        CategoryHome()
            //Calling environment var
            .environmentObject(ModelData())
    }
}
