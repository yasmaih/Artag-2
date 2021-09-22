//
//  EcransDeFavoris.swift
//  Artag
//
//  Created by yasmine on 17/09/2021.
//

import SwiftUI

struct EcransDeFavoris: View {
    var body: some View {
        VStack{
            NavigationView{
            List(tags) { information in
                NavigationLink(
                    destination: TagScreen(tag: information) ,
                    label: {
                        Image(information.image)
                            .resizable()
                            .frame(width: 50, height: 40, alignment: .center)
                        VStack(alignment: .leading) {
                            Text(information.name)
                                .font(.title2)
                            Text(information.category.rawValue + ", ajouté par " + information.user.name ).foregroundColor(.gray)

                        }
                    })
            }.navigationTitle("Vos Favoris")
        }.navigationBarHidden(true)
        }
    }
}

struct EcransDeFavoris_Previews: PreviewProvider {
    static var previews: some View {
        EcransDeFavoris()
    }
}
