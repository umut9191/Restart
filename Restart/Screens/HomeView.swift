//
//  HomeView.swift
//  Restart
//
//  Created by Macintosh on 23.02.2022.
//

import SwiftUI

struct HomeView: View {
    @AppStorage("onboarding") var isOnBoarding : Bool = false
    @State private var isAnimating: Bool = false
    var body: some View {
        VStack(spacing:20) {
            
            //MARK: - Header
            
            Spacer()
            ZStack {
                CircleGroupView(ShapeColor: .gray, ShapeOpacity: 0.1)
                Image("character-2")
                    .resizable()
                    .scaledToFit()
                .padding()
                .offset(y: isAnimating ? 35 : -35)
                .animation(
                    Animation
                        .easeOut(duration: 4)
                        .repeatForever()
                    ,value: isAnimating
                )
            }
            
            //MARK: - Center
            Text("The time that leads to mastery is dependent on the intencity of our focus.")
                .font(.title3)
                .fontWeight(.light)
                .foregroundColor(.secondary)
                .multilineTextAlignment(.center)
                .padding()
            
            //MARK: - Footer
            Spacer()
//            Text("Home")
//                .font(.largeTitle)
            Button(action:{
                withAnimation{
                    isOnBoarding = true
                }
                
            }) {
                //We dont need horizontal stack view,because swiftUI here use automaticaly horizontal stack view.
                Image(systemName: "arrow.triangle.2.circlepath.circle.fill")
                    .imageScale(.large)
                Text("Restart")
                    .font(.system(.title3,design: .rounded))
                    .fontWeight(.bold)
            }//Button
            .buttonStyle(.borderedProminent)
            .buttonBorderShape(.capsule)
            .controlSize(.large)
            .padding()
           
            
        }//VStack
        .onAppear(perform: {
            DispatchQueue.main.asyncAfter(deadline: .now() + 0.5, execute: {
                isAnimating = true
            })
        })
        Spacer()
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
