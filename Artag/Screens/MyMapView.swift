//
//  MyMapView.swift
//  Artag
//
//  Created by yasmine on 15/09/2021.
//

import SwiftUI
import MapKit
import UIKit
import CoreLocation

struct MyMapView: View {
    @StateObject private var viewModel = MyMapViewModel()
    @State private var trackingMode = MapUserTrackingMode.follow
    var body: some View {
        
        ZStack{
            Map(coordinateRegion: $viewModel.region,
                // C'est .all pour zoom + deplacement
                // .zomm pour que zomm
                interactionModes: .all,
                showsUserLocation : true,
                userTrackingMode: $trackingMode, annotationItems : tags)
            {anno in
                MapAnnotation(coordinate: anno.adresse, anchorPoint: CGPoint(x: 0.5, y: 0.5)) {
                    
                    NavigationLink(
                        destination: TagScreen(tag: anno),
                        label: {
                            VStack {
                                Image(systemName: "mappin.circle.fill")
                                    .foregroundColor(.red)
                                    .font(.caption)
                                Text(anno.name)
                                    .fontWeight(.bold)
                                    .foregroundColor(.pink)
                                    .font(.caption)
                            }
                        })
                }
            }
            .ignoresSafeArea()
            .onAppear{
                viewModel.checkIfLocationServicesIsEnabled()
            }
        }
    }
    
}


struct MyMapView_Previews: PreviewProvider {
    static var previews: some View {
        MyMapView()
    }
}
