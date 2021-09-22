//
//  ProfilScreens.swift
//  Artag
//
//  Created by yasmine on 15/09/2021.
//

import SwiftUI

struct ProfilScreens: View {
    var user: User
    var body: some View {
        NavigationView{
            ScrollView {
                HStack{
                }
                Button(action: {}, label: {
                    Text("Modifier")
                        .font(.headline)
                        .fontWeight(.medium)
                        .foregroundColor(.blue)
                        .multilineTextAlignment(.trailing)
                    
                    Button(action: {}, label: {
                        Spacer(minLength: 20)
                        
                        Image(systemName: "gearshape")
                            .font(.title3)
                            .foregroundColor(.black)
                        
                    })
                })
                .padding()
                Text(user.pseudo)
                    .fontWeight(.bold)
                    .multilineTextAlignment(.center)
                
                VStack{
                    Image(user.picture)
                        .resizable()
                        .clipShape(Circle())
                        .scaledToFit()
                        .overlay(
                            Circle().stroke(Color.white, lineWidth: 4))
                        .shadow(radius: 5)
                        .frame(width: 250, height: 250)
                    
                    
                    HStack{
                        Text("Abonnés")
                            .font(.body)
                            .fontWeight(.thin)
                            .padding(1)
                        
                        Text("\(user.NumberOfFollowers)")
                            .foregroundColor(.blue)
                        
                    }
                    HStack{
                        Text("Abonnements")
                            .font(.body)
                            .fontWeight(.thin)
                            .padding(1)
                        
                        Text("\(user.NumberOfFollowers)")
                            .font(.body)
                            .foregroundColor(.blue)
                    }
                    
                }
                Text(user.bio)
                    
                    .foregroundColor(Color.black.opacity(0.8))
                    .padding(6.0)
                    .padding(.leading,1)
                
                Spacer(minLength: 2)
                
                VStack {
                    HStack{
                        Image("person")
                            .foregroundColor(Color.black.opacity(0.3))
                        
                        Text(user.name)
                        Spacer()
                        
                    }.padding(.horizontal)
                    HStack{
                        Image("etoile")
                            .foregroundColor(Color.black.opacity(0.3))
                        Text(user.interests)
                        Spacer()
                        
                    }.padding(.horizontal)
                    HStack{
                        Image("avion")
                            .foregroundColor(Color.black.opacity(0.3))
                        Text(user.userCity)
                        Spacer()
                        
                    }.padding(.horizontal)
                    HStack{
                        Image("hotspot")
                            .foregroundColor(Color.black.opacity(0.5))
                        Text(stringFromDate(d: user.dateSignIn))
                        Spacer()
                        
                    }.padding(.horizontal)
                    
                }.navigationBarHidden(true)
                
            }
            
        }
    }
}

struct ProfilScreens_Previews: PreviewProvider {
    static var previews: some View {
        ProfilScreens(user: Users[3])
    }
}
