//
//  onboardingView.swift
//  Artag
//
//  Created by yasmine on 21/09/2021.
//

import SwiftUI

struct onboardingView: View {
    var data: OnboardingData
    @State private var isAnimating: Bool = false
   @State var showApp = true
    var body: some View {
        
        ZStack{
            Color(data.backgroundColor)
                .ignoresSafeArea()
            VStack(spacing: 6){
                Image(data.objectimage)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 400, height: 400, alignment: .center)
                    .scaleEffect(isAnimating ? 1 : 0.9)
                
                Text(data.primaryText)
                    .font(.title)
                    .fontWeight(.bold)
                    .multilineTextAlignment(.center)
                    .foregroundColor(Color(.systemTeal))
                
                Text(data.secondaryText)
                    .fontWeight(.light)
                    .fixedSize(horizontal: false, vertical: true)
                    .multilineTextAlignment(.center)
                    .padding()
                Button(action: {
                    showApp.toggle()
                }, label: {
                        HStack {
                            Image(systemName: "paintbrush.fill")
                                .font(.title)
                                .frame(width: 30, height: 20)
                            Text("En avant !")
                                .fontWeight(.semibold)
                            
                        }
                        .padding()
                        .foregroundColor(.white)
                        .background(Color(.systemTeal))
                        .cornerRadius(40)
                    })
            }.padding(10)
        }.ignoresSafeArea()
        .onAppear(perform: {
            isAnimating = false
            withAnimation(.easeOut(duration: 0.5)) {
                self.isAnimating = true
            }
        })
    }
}


struct onboardingView_Previews: PreviewProvider {
    static var previews: some View {
        onboardingView(data: OnboardingData.list.first!)
    }
}
