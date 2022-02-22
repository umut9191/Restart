//
//  HomeView.swift
//  Restart
//
//  Created by Macintosh on 23.02.2022.
//

import SwiftUI

struct HomeView: View {
    @AppStorage("onboarding") var isOnBoarding : Bool = false
    var body: some View {
        VStack(spacing:20) {
            Text("Home")
                .font(.largeTitle)
            Button(action:{
                isOnBoarding = true
            }){
                Text("Restart")
            }
            
        }//VStack
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
