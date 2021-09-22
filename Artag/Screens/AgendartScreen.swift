//
//  AgendartScreen.swift
//  Artag
//
//  Created by yasmine on 17/09/2021.
//

import SwiftUI

struct AgendartScreen: View {
    var body: some View {
        
           
            VStack{
            Text("Évenements a venir:")
                .font(.title2)
                .multilineTextAlignment(.leading)
                HStack (alignment: .top){
                ZStack {
                    Image("la cathe")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 300)
                    
                    Text("Visites guidées en anglais : 18 et  19 Septembre 2021 à 15h30")
                        .fontWeight(.bold)
                        .foregroundColor(.pink)
                        .foregroundColor(Color.black)
                        .multilineTextAlignment(.center)
                        .padding()
                        .background(Color.white)
                        .opacity(0.7)
                        .padding(0.0)
                
                }
            
            }
        Text("La Cathédrale Notre-Dame de la Treille")
        .font(.title3)
        .fontWeight(.thin)
        .multilineTextAlignment(.leading)
        .padding()
                Spacer()
    
        }.navigationBarHidden(true)
       
    }
}


struct AgendartScreen_Previews: PreviewProvider {
    static var previews: some View {
        AgendartScreen()
    }
}
