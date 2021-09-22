//
//  ParentProfil.swift
//  Artag
//
//  Created by yasmine on 17/09/2021.
//

//import SwiftUI

/*struct ParentProfil: View {
    var body: some View {
        NavigationView {
            /*VStack {Image("artpic")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .clipped()
                .frame(height: 300)
                VStack{*/
                NavigationLink(
                    destination: ProfilScreens(user: Users[3]),
                    label: {
                        HStack {
                            Image(systemName: "person")
                                .font(.title)
                                .frame(width: 43, height: 5)
                            Text("Profil    ")
                                .fontWeight(.semibold)
                        }
                        .padding()
                        .foregroundColor(.white)
                        .background(Color.gray)
                        .cornerRadius(40)
                    })
                
               /*NavigationLink(
                    destination: EcransDeFavoris(),
                    label: {
                        HStack {
                            Image(systemName: "heart.circle.fill")
                                .font(.title)
                                .frame(width: 43, height: 5)
                            Text("Favoris ")
                                .fontWeight(.semibold)
                        }
                        .padding()
                        .foregroundColor(.white)
                        .background(Color.green)
                        .cornerRadius(40)
                    })*/
                
               /* NavigationLink(
                    destination:  AgendartScreen(),
                    label: {
                        
                        HStack {
                            Image(systemName: "calendar")
                                .font(.title)
                                .frame(width: 30, height: 20)
                            Text("Agend'art")
                                .fontWeight(.semibold)
                            
                        }
                        .padding()
                        .foregroundColor(.white)
                        .background(Color.black)
                        .cornerRadius(40)
                    })*/
                }.padding(10)
            }
            
        }
    }
    
}


struct ParentProfil_Previews: PreviewProvider {
    static var previews: some View {
        ParentProfil()
    }
}*/
