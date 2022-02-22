//
//  ContentView.swift
//  Restart
//
//  Created by Macintosh on 22.02.2022.
//

import SwiftUI

struct ContentView: View {
    //user defaults; key:onboarding
    @AppStorage("onboarding") var isOnboardingViewActive:Bool = true
    var body: some View {
        if isOnboardingViewActive{
            OnboardingView()
        }else
        {
            HomeView()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
