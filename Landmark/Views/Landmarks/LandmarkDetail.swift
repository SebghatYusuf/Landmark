//
//  LandmarkDetail.swift
//  Landmark
//
//  Created by Sebghatullah Wakily on 07/08/2022.
//

import SwiftUI

@available(iOS 13.0, *)
struct LandmarkDetail: View {
    @EnvironmentObject var modelData: ModelData
    var landmark: Landmark
    
    var landmarkIndex: Int {
        modelData.landmarks.firstIndex(where: { $0.id == landmark.id})!
    }
    
    var body: some View {
        ScrollView {
            MapView(coordinate: landmark.locationCoordinate)
                .ignoresSafeArea( edges: .top)
                .frame(height: 300)
            
            CircleImage(image: landmark.image)
                .padding(.bottom, -130)
                .offset(y: -130)
            
            VStack(alignment: .leading) {
                HStack {
                    Text(landmark.name)
                        .font(.title)
                    
                    FavoriteButton(isSet: $modelData.landmarks[landmarkIndex].isFavorite)
                }
            
            
                HStack {
                    Text(landmark.park)
                    Spacer()
                    Text(landmark.state)
                }.foregroundColor(.secondary)
                    .font(.subheadline)
            Divider()
                Text("About \(landmark.name)")
                Text(landmark.description)
            
                
            }.padding()
            Spacer()
        }
        .navigationTitle(landmark.name)
        .navigationBarTitleDisplayMode(.inline)
    }
}

struct LandmarkDetail_Previews: PreviewProvider {
    static let modelData = ModelData()
    
    static var previews: some View {
        LandmarkDetail(landmark:modelData.landmarks[0])
            .environmentObject(modelData)
    }
}
