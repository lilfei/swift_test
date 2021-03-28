//
//  MapView.swift
//  swift_test
//
//  Created by 李龙飞 on 2021/3/27.
//  Copyright © 2021 李龙飞. All rights reserved.
//

import SwiftUI
import MapKit

struct MapView: View {
    var coordinate: CLLocationCoordinate2D
    @State private var region = MKCoordinateRegion()

    var body: some View {
        if #available(iOS 14.0, *) {
            Map(coordinateRegion: $region)
                .onAppear {
                    setRegion(coordinate)
                }
        } else {
            // Fallback on earlier versions
        }
    }

    private func setRegion(_ coordinate: CLLocationCoordinate2D) {
        region = MKCoordinateRegion(
            center: coordinate,
            span: MKCoordinateSpan(latitudeDelta: 0.2, longitudeDelta: 0.2)
        )
    }
}

struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        MapView(coordinate: CLLocationCoordinate2D(latitude: 34.011_286, longitude: -116.166_868))
    }
}
