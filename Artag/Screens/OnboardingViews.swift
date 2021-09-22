//
//  OnboardingViews.swift
//  Artag
//
//  Created by yasmine on 21/09/2021.
//

import SwiftUI

struct OnboardingViews: View {
    @State private var currentTab = 0
    @State var showApp = true
    var body: some View {
        
        if showApp {
            ContentView()
        }else {
            TabView(selection: $currentTab,
                    content: {
                        ForEach(OnboardingData.list) { viewData in
                            onboardingView(data: viewData)
                                .tag(viewData.id)
                        }
                    })
                .tabViewStyle(PageTabViewStyle())
                .indexViewStyle(PageIndexViewStyle(backgroundDisplayMode: .always))
                .navigationBarHidden(true)
                
        }
    }
}
struct OnboardingViews_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingViews()
    }
}
