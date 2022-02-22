//
//  OnboardingView.swift
//  Restart
//
//  Created by Macintosh on 23.02.2022.
//

import SwiftUI

struct OnboardingView: View {
    @AppStorage("onboarding") var isOnboarding:Bool = true
    var body: some View {
        VStack(spacing:20) {
            Text("Onboarding")
                .font(.largeTitle)
            
            Button( action:{
                isOnboarding = false
            })
                { Text("Start")}
        }//VStack
    }
}

struct OnboardingView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingView()
    }
}
