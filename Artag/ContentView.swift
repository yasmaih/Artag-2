//
//  ContentView.swift
//  Artag
//
//  Created by yasmine on 14/09/2021.
//

import SwiftUI

struct ContentView: View {
    
    var body: some View{
        
TabView{
    MapAndSearch()
        .tabItem {
            Image(systemName: "mappin.and.ellipse")
            Text("Artmap")
        }
            PublicationTag()
                .tabItem {
                    Image(systemName: "plus.circle")
                    Text ("Contribuez")
                }
                  ProfilScreens(user: Users[3])
                .tabItem {
                    Image(systemName: "person.circle")
                    Text ("Mon profil")
                }
            EcransDeFavoris()
                    .tabItem {
                        Image(systemName: "heart.circle.fill")
                        Text ("Mes favoris")
                    }
                AgendartScreen()
                    .tabItem {
                        Image(systemName: "calendar")
                        Text ("Agend'art")
                    }
        }
}
}


    
    struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
