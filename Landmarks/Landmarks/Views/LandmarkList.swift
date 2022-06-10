//
//  LandmarkList.swift
//  Landmarks
//
//  Created by Kirkland Yuknis on 6/10/22.
//

import SwiftUI

struct LandmarkList: View {
    var body: some View {
        NavigationView {
            List(landmarks) { landmark in
                NavigationLink(destination: LandmarkDetail(landmark: landmark)) {
                    LandmarkRow(landmark: landmark)
                }
            }
            .navigationTitle("Landmarks")
        }
    }
}

struct LandmarkList_Previews: PreviewProvider {
    
    static var previews: some View {
        
        let devices: [String] = [
            "iPhone SE (2nd Generation)",
            "iPhone XS Max"
        ]
        
        ForEach(devices, id: \.self) { device in
            LandmarkList()
                .previewDevice(PreviewDevice(rawValue: device))
                .previewDisplayName(device)
        }
    }
    
}
