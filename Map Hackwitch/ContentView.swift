//
//  ContentView.swift
//  Map Hackwitch
//
//  Created by Student on 2/22/22.
//

import SwiftUI
import MapKit

struct ContentView: View {
    @State private var region = MKCoordinateRegion(
        center: CLLocationCoordinate2D(
            latitude: 42.15704,
            longitude: -88.14812),//coords of the HS
        span: MKCoordinateSpan(// how zoomed in
            latitudeDelta: 0.05, // amount zoomed in are we?
            longitudeDelta: 0.05)
    )
    var body: some View {
        Map(coordinateRegion: $region)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
