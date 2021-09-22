//
//  SearchFilter.swift
//  Artag
//
//  Created by yasmine on 19/09/2021.
//

import SwiftUI

struct SearchFilter: View {
    @State private var displayList = tags
    @State var text = ""
    @State var gridLayout : [GridItem] = [GridItem()]

    
    var body: some View {
        VStack{
            ScrollView(.vertical, showsIndicators : false){
            Search_textfield(text: $text)
                LazyVGrid(columns : gridLayout, alignment : .center, spacing : 10){
                ForEach(tags.filter{"\($0)".contains(text.lowercased())}){i in
                                            NavigationLink(
                            destination: TagScreen(tag: i),
                            label: {
                                ZStack(alignment: .leading){
                                    Image(i.image)
                                        .resizable()
                                        .scaledToFill()
                                        .frame(minWidth: 0, maxWidth: .infinity)
                                        .frame(height:200)
                                        .cornerRadius(16)
                                        .padding(.trailing,12)
                                    
                                    VStack(alignment: .leading){
                                        Text(i.name)
                                            .font(.title)
                                            .bold()
                                            .foregroundColor(.white)
                                        HStack(alignment: .bottom){
                                            Text(i.category.rawValue)
                                                .font(.title2)
                                            Text(i.city)
                                        }.foregroundColor(.white)
                                        
                                    }.padding(.all, 23)
                                }.padding(.leading, 12)
                            })
                    }
                }
            }
        }.navigationTitle("Toujours en quête ?")
        
        }
        
    }



struct SearchFilter_Previews: PreviewProvider {
    static var previews: some View {
        SearchFilter()
    }
    
}

