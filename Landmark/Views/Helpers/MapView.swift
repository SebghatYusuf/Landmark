//
//  MapView.swift
//  Landmark
//
//  Created by Sebghatullah Wakily on 07/08/2022.
//

import SwiftUI
import MapKit


struct MapView: View {
    
    var coordinate: CLLocationCoordinate2D
    
    @State private var region = MKCoordinateRegion()
    
    
    private func setRegion(_ coordinate:CLLocationCoordinate2D){
        region = MKCoordinateRegion(
            center: coordinate, span: MKCoordinateSpan(latitudeDelta: 0.2, longitudeDelta: 0.2)
        )
    }
    
    
    var body: some View {
        Map(coordinateRegion: $region)
            .onAppear {
                setRegion(coordinate)
            }
    }
}

struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        MapView(coordinate: CLLocationCoordinate2D(latitude: 34.011, longitude: -116.166))
    }
}
