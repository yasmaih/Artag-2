//
//  PubRoubaix.swift
//  Artag
//
//  Created by azerty on 22/09/2021.
//

import SwiftUI

struct PubRoubaix: View {
    var body: some View {
        ZStack{
           
            Color("")
                .ignoresSafeArea()
           
            Image("Pub roubaix")
                
                .resizable()
                .frame(width: 400, height: 400, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                .shadow(radius: 20)
                .padding()
        }
   
    }
}

struct PubRoubaix_Previews: PreviewProvider {
    static var previews: some View {
        PubRoubaix()
    }
}
