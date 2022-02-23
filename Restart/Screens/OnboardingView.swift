//
//  OnboardingView.swift
//  Restart
//
//  Created by Macintosh on 23.02.2022.
//

import SwiftUI
//Note: Option+Command+ Left arrow will hide where cursor's placement block. Option+Command+ Right as you guest, will show that block of code.
struct OnboardingView: View {
    @AppStorage("onboarding") var isOnboarding:Bool = true
    var body: some View {
        ZStack {
            Color("ColorBlue")
                .ignoresSafeArea(.all,edges: .all)
            VStack(spacing:20) {
                
                //MARK: - Header
                Spacer()
                VStack(spacing:0){
                    Text("Share.")
                        .font(.system(size: 60))
                        .fontWeight(.heavy)
                        .foregroundColor(.white)
                    Text("""
                    It'is not how much we give but
                    how mush love we put into giving.
                    """)
                        .font(.title3)
                        .fontWeight(.light)
                        .foregroundColor(.white)
                        .multilineTextAlignment(.center)
                        .padding(.horizontal,10)
                }//Header
                //MARK: - Center
                
                
                //MARK: - Footer
                
                
                
                
                
//                Text("Onboarding")
//                    .font(.largeTitle)
//
//                Button( action:{
//                    isOnboarding = false
//                })
//                    { Text("Start")}
            }//VStack
        }//ZStack
    }
}

struct OnboardingView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingView()
    }
}
