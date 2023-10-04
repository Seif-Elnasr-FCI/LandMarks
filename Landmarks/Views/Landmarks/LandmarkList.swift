//
//  LandmarkList.swift
//  Landmarks
//
//  Created by seif amr on 20/03/2023.
//

import SwiftUI

struct LandmarkList: View {
    @State private var showFavoritesOnly = false
    @EnvironmentObject var modelData: ModelData
    
    var filteredLandmarks: [Landmark]
    {
        modelData.landmarks.filter{
            landmark in
            (!showFavoritesOnly || landmark.isFavorite)
        }
    }
    var body: some View {
        NavigationView{
            
            List{
                
                Toggle(isOn:$showFavoritesOnly)
                {
                    Text("Favorites Only")
                }
                
                ForEach(filteredLandmarks){
                    landmark in
                    NavigationLink{
                        LandmarkDetail(landmark: landmark)
                    } label: {
                        LandmarkRow(landmark: landmark)
                    }
                }
                
            }
            .navigationTitle("Landmarks")
        }
    }
}

struct LandmarkList_Previews: PreviewProvider {
    static var previews: some View {
        
            LandmarkList()
            .environmentObject(ModelData())
                
        }
    }

