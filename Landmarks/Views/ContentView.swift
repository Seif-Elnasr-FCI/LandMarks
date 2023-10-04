//
//  ContentView.swift
//  Landmarks
//
//  Created by seif amr on 19/03/2023.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        LandmarkList()
  }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(ModelData())
    }
}
