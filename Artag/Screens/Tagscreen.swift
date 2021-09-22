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
        
        ScrollView(){
            Image(tag.image)
                .resizable()
                .scaledToFit()
            
            VStack {
                HStack {
                    Image("avion")
                    Text(tag.city)
                    Spacer()

                }
                HStack {
                    Image("boite")
                    Text(tag.category.rawValue)
                    Spacer()

                }
                HStack {
                    Image("calendrier")
                    Text(stringFromDate(d: tag.date))
                    Spacer()

                }
                
                HStack {
                    NavigationLink(
                        destination: ProfilScreens(user : tag.user)
                            .navigationBarHidden(false),
                        label: {
                            Image("person")
                            Text(tag.user.name)
                            Spacer()
                            Image(systemName: "greaterthan")
                        })
                    
                }
                Text(tag.bio)
                Spacer()
            }
            .padding(.horizontal)

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
