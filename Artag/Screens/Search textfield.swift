//
//  Search textfield.swift
//  Artag
//
//  Created by yasmine on 18/09/2021.
//

import SwiftUI

struct Search_textfield: View {
    @State var isSearching = false
    @Binding var text : String
    var body: some View {
        HStack{
            HStack{
                TextField("Recherche", text: $text )
                    .padding(.leading,24)
                
            }
            .padding()
            .background(Color(.systemGray5))
            .cornerRadius(12)
            .padding(.horizontal)
            .onTapGesture(perform: {
                isSearching = true
            })
            .overlay(
                HStack {
                    Image(systemName: "magnifyingglass")
                    Spacer()
                    if isSearching {
                        Button(action:  { text = ""}, label: {
                            Image(systemName:"xmark.circle.fill")
                                .padding(.vertical)
                        })
                    }
                    
                }.padding(.horizontal, 32)
                .foregroundColor(.gray)
            )
            Spacer()
            if isSearching{
                Button(action: {
                    isSearching = false
                    text = ""
                }, label: {
                    Text("Annuler")
                        .padding(.trailing)
                        .padding(.leading,-12)
                })
                .transition(.move(edge: .trailing))
                .animation(.spring())
            }
        }
    }
}

