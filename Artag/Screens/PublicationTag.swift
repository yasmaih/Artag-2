//
//  AfficherTag.swift
//  Artag
//
//  Created by yasmine on 15/09/2021.
//

import SwiftUI

struct PublicationTag: View {
    @State private var name: String = " "
    @State private var date: String = " "
    @State private var user: String = " "
    @State private var category: String = " "
    @State private var bio: String = " "
    @State private var city: String = " "
    @State private var adresse: String = " "
    
    @State private var selectedShow : TVShow?
    
        
    
    var dateFormatter: DateFormatter {
        let formatter = DateFormatter()
        formatter.dateStyle = .long
        return formatter
    }
    @State private var dateDajout = Date()
    var body: some View {
        NavigationView{
        VStack{
        HStack(spacing: 20) {
            Button(action: {
                selectedShow = TVShow(name: "vous allez être redireger vers l'accueil")
            }, label: {
                ZStack{
                    Rectangle()
                        .frame(width: 100, height: 40)
                        .cornerRadius(12)
                        .foregroundColor(.red)
                    HStack{
                        Image(systemName: "xmark.circle")
                        Text("Annuler")
                    }.foregroundColor(.white)
                }.padding(4)
            })
            Spacer()
            Button(action: {
                selectedShow = TVShow(name: "Vous allez être redireger vers votre Tag")
            }, label: {
                ZStack{
                    Rectangle()
                        .frame(width: 100, height: 40)
                        .cornerRadius(12)
                        .foregroundColor(.green)
                    HStack{
                        Image(systemName: "checkmark")
                        Text("Publier")
                    }.foregroundColor(.white)
                }.padding(4)
            })

        }
        .alert(item: $selectedShow) { show in
            Alert(title: Text(show.name), message: Text(" "), dismissButton: .cancel())
        }
            Text("Publiez un tag")
                .font(.largeTitle)
                .bold()
            HStack{
                Image(systemName: "photo")
                    .resizable()
                    .scaledToFit()
                    .cornerRadius(10)
                    .padding()
                Spacer()
            }
            Form(){
                
                HStack{
                    
                    Text("Nom du lieu :")
                    TextField("nom du lieu", text: $name)
                    Spacer()
                }
                
                VStack(alignment: .leading) {
                    Text("Date d'exposition :")
                    HStack{
                        
                        DatePicker(selection: $dateDajout, in: ...Date(), displayedComponents: .date) {}.scaledToFit()
                        Text("au")
                        DatePicker(selection: $dateDajout, in: ...Date(), displayedComponents: .date) {}.scaledToFit()
                    }
                }
                
                HStack{
                    Text("Catégorie :")
                    TextField("catégorie",text: $category)
                }
                
                HStack{
                    Text("Ville :")
                    TextField("ville",text: $city)
                }
                
                HStack{
                    Text("Commentaire :")
                    TextField("commentaire", text: $bio)
                }
            }
            
            
                
        }.navigationBarHidden(true)
        
    }
    }
    
}


struct PublicationTag_Previews: PreviewProvider {
    static var previews: some View {
        PublicationTag()
    }
}

