//
//  LandmarkDetail.swift
//  swift_test
//
//  Created by 李龙飞 on 2021/3/27.
//  Copyright © 2021 李龙飞. All rights reserved.
//

import SwiftUI

struct LandmarkDetail: View {
    var landmark: Landmark

    var body: some View {
        VStack {
            if #available(iOS 14.0, *) {
                MapView(coordinate: landmark.locationCoordinate)
                    .ignoresSafeArea(edges: .top)
                    .frame(height: 300)
            } else {
                // Fallback on earlier versions
            }

            CircleImage(image: landmark.image)
                .offset(y: -130)
                .padding(.bottom, -130)

            VStack(alignment: .leading) {
                Text(landmark.name)
                    .font(.title)
                    .foregroundColor(.primary)

                HStack {
                    Text(landmark.kind)
                    Spacer()
                    Text(landmark.kind)
                }
                .font(.subheadline)
                .foregroundColor(.secondary)

                Divider()

                if #available(iOS 14.0, *) {
                    Text("About \(landmark.name)")
                        .font(.title2)
                } else {
                    // Fallback on earlier versions
                }
                Text(landmark.description)
            }
            .padding()

            Spacer()
        }
    }
}

struct LandmarkDetail_Previews: PreviewProvider {
    static var previews: some View {
        LandmarkDetail(landmark: landmarks[0])
    }
}
