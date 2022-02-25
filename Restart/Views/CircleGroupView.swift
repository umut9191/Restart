//
//  CircleGroupView.swift
//  Restart
//
//  Created by Macintosh on 26.02.2022.
//

import SwiftUI
//reuseable view
struct CircleGroupView: View {
    
    //MARK: - Properties
    @State var ShapeColor:Color
    @State var ShapeOpacity:Double
    //MARK: - Body
    var body: some View {
        ZStack{
            Circle()
                .stroke(ShapeColor.opacity(ShapeOpacity),lineWidth: 40)
                .frame(width: 260, height: 260, alignment: .center)
            Circle()
                .stroke(ShapeColor.opacity(ShapeOpacity),lineWidth: 80)
                .frame(width: 260, height: 260, alignment: .center)
        }//: Zstack
    }
}

struct CircleGroupView_Previews: PreviewProvider {
    static var previews: some View {
        ZStack{
            Color("ColorBlue")
                        .ignoresSafeArea(.all,edges:.all)
            CircleGroupView(ShapeColor: .white, ShapeOpacity: 0.2)
        }
        
    }
}
