//
//  PubTreille.swift
//  Artag
//
//  Created by azerty on 22/09/2021.
//

import SwiftUI

struct PubTreille: View {
    var body: some View {
        ZStack{
           
            Color("ColorAfficheTreille")
                .ignoresSafeArea()
           
            Image("Pub la treille")
                
                .resizable()
                .frame(width: 480, height: 480, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                .shadow(radius: 20)
                .padding()
        }
   
        }
}

struct PubTreille_Previews: PreviewProvider {
    static var previews: some View {
        PubTreille()
    }
}
