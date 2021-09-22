//
//  AgendartScreen.swift
//  Artag
//
//  Created by yasmine on 17/09/2021.
//

import SwiftUI

struct AgendartScreen: View {
    var body: some View {
        NavigationView {
            VStack{
                Text("Événements à venir")
                .font(.title2)
                    .multilineTextAlignment(.center)
                
                VStack(spacing: 15) {
                   Image("la cathe")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 300)
                    
                        Text("FESTIVAL-TREILLE EN FÊTE                                             25 - 26 Septembre 2021")
                           .fontWeight(.bold)
                            .foregroundColor(.pink)
                            .foregroundColor(Color.black)
                            .multilineTextAlignment(.center)
                           .background(Color.white)
                            .opacity(0.7)
                           
                    NavigationLink(
                        destination: PubRoubaix(),
                        label: {
                            Text("Infos")
                                    .font(.headline)
                                    .fontWeight(.regular)
                                    .frame(width: 70, height: 30)
                                    .foregroundColor(.white)
                                    .background(Color.orange)
                                    .cornerRadius(10)
                        })
                    
                   
                       
                        HStack{
            VStack(spacing: 15) {
                    Image("piscine")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 310)
                        
                
                Text("VERNISSAGE DES EXPOSITIONS D’AUTOMNE                                                                    6 novembre 2021 - 6 février 2022")
                    .fontWeight(.bold)
                    .foregroundColor(.pink)
                    .foregroundColor(Color.black)
                    
                    .multilineTextAlignment(.center)
                   .background(Color.white)
                    .opacity(0.7)
                
                NavigationLink(
                    destination: PubTreille(),
                    label: {
                        Text("Infos")
                                 .font(.headline)
                                 .fontWeight(.regular)
                                 .frame(width: 70, height: 30)
                                 .foregroundColor(.white)
                                 .background(Color.orange)
                                 .cornerRadius(10)
                    })
              
                
               
                    
        }.navigationBarHidden(true)
                
                        }.padding()
                      
        }
                }
            }
                
                }
    }


struct AgendartScreen_Previews: PreviewProvider {
    static var previews: some View {
        AgendartScreen()
    }
}

