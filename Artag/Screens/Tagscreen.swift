//
//  Ecran De Tag.swift
//  Artag
//
//  Created by yasmine on 14/09/2021.
//

import SwiftUI

struct TagScreen: View {
    let tag : Tag
    var body: some View{
        
        VStack(alignment: .leading, spacing: 0.0){
            Image(tag.image)
                .resizable()
                .scaledToFit()
            Form{
                HStack {
                    Image("avion")
                    Spacer()
                    Text(tag.city)
                }
                HStack {
                    Image("boite")
                    Spacer()
                Text(tag.category.rawValue)
                }
                HStack {
                Image("calendrier")
                    Spacer()
                Text(stringFromDate(d: tag.date))
                }
                HStack {
                Image("person")
                    Spacer()
                    NavigationLink(
                        destination: ProfilScreens(user : tag.user)
                            .navigationBarHidden(true),
                        
                        label: {
                            Text(tag.user.name)
                                
                        })
                    
                    }
                Text(tag.bio)
                    Spacer()
                }
                
            } .navigationBarTitle(tag.name)
        }
       
    }

   /* struct FavorisButton : View {
        @State var isPressed = false
        var body: some View {
        ZStack {
            Image(systemName: "heart.fill")
                .opacity(isPressed ? 1 : 0)
                .scaleEffect(isPressed ? 1.0 : 0.1)
                .animation(.linear)
            Image(systemName: "heart")
        }.font(.system(size: 40))
            .onTapGesture {
                self.isPressed.toggle()
        }
        .foregroundColor(isPressed ? .red : .white)
        }
    }
}*/

struct TagScreen_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            TagScreen(tag: tags[0])
        }
    }
}
