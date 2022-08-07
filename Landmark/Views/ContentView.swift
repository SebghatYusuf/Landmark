//
//  ContentView.swift
//  Landmark
//
//  Created by Sebghatullah Wakily on 07/08/2022.
//

import SwiftUI
import CoreData

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
