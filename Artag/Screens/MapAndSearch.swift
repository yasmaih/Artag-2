//
//  segmentedcontrol.swift
//  Artag
//
//  Created by yasmine on 20/09/2021.
//

import SwiftUI

struct MapAndSearch: View {
    @State private var selectedSide = 0
    var body: some View {
        NavigationView{
            VStack {
                Picker("What is your favorite color?", selection: $selectedSide) {
                    Text("Artmap").tag(0)
                    Text("Recherche").tag(1)
                    
                }.padding()
                .pickerStyle(SegmentedPickerStyle())
                
                if selectedSide == 0 {
                    MyMapView()
                        .navigationBarHidden(true)
                }else{
                    SearchFilter()
                }
            }
            
        }
    }
}

struct MapAndsearch_Previews: PreviewProvider {
    static var previews: some View {
        MapAndSearch()
    }
}
