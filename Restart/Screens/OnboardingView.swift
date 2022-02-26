//
//  OnboardingView.swift
//  Restart
//
//  Created by Macintosh on 23.02.2022.
//

import SwiftUI
//Note: Option+Command+ Left arrow will hide where cursor's placement block. Option+Command+ Right as you guest, will show that block of code.
struct OnboardingView: View {
    //MARK: - Properties
    @AppStorage("onboarding") var isOnboarding:Bool = true
    @State private var buttonWidth: Double = UIScreen.main.bounds.width - 80
    @State private var buttonOffset: CGFloat = 0
    
    //MARK: - Body
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
                
                ZStack  {
                    CircleGroupView(ShapeColor: .white, ShapeOpacity: 0.2)
                    Image("character-1")
                        .resizable()
                        .scaledToFit()
                }//: Center
                Spacer()
                //MARK: - Footer
               
                ZStack{
                    //Part Of the custom Button
                    
                    //1.BackGround (Static)
                    
                    Capsule()
                        .fill(Color.white.opacity(0.2))
                    Capsule()
                        .fill(Color.white.opacity(0.2))
                        .padding(8)
                    //2.Call -To - Action (Static)
                    
                    Text("Get Started")
                        .font(.system(.title3,design: .rounded))
                        .fontWeight(.bold)
                        .foregroundColor(.white)
                        .offset(x:20)
                    
                    //3.Capsule (Dynamic width)
                    HStack{
                        Capsule()
                            .fill(Color("ColorRed"))
                            .frame(width:buttonOffset + 80)
                        Spacer()
                    }
                    //4.Circle (Draggable)
                    HStack {
                        ZStack{
                            Circle()
                                .fill(Color("ColorRed"))
                            Circle()
                                .fill(.black.opacity(0.15))
                                .padding(8)
                            Image(systemName: "chevron.right.2")
                                .font(.system(size: 24,weight:.bold))
                        }
                        .foregroundColor(.white)
                    .frame(width: 80, height: 80, alignment: .center)
                    .offset(x:buttonOffset)
                    .gesture(
                    DragGesture()
                        .onChanged{ gesture in
                            if gesture.translation.width > 0  && buttonOffset <= buttonWidth - 80{
                                buttonOffset = gesture.translation.width
                            }
                        }
                        .onEnded{ _ in
                            if buttonOffset > buttonWidth / 2 {
                                buttonOffset = buttonWidth - 80
                                isOnboarding = false
                            }else{
                                buttonOffset = 0
                            }
                        }
                    )//Gesture
//                    .onTapGesture {
//                        isOnboarding = false
//                    }
                        Spacer()
                    }//HStack
                    
                    
                    
                    
                }//:Footer
                .frame(width:buttonWidth,height: 80, alignment: .center)
                .padding()
                
                
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
