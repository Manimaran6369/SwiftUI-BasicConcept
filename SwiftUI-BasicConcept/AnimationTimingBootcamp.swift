//
//  AnimationTimingBootcamp.swift
//  SwiftUI-BasicConcept
//
//  Created by Manimaran on 12/13/24.
//

import SwiftUI

struct AnimationTimingBootcamp: View {
    
    @State var isAnimating: Bool = false
    let timing: Double = 10.0
    var body: some View {
        
        VStack {
            Button("Button") {
                isAnimating.toggle()
            }
//            RoundedRectangle(cornerRadius: 25.0)
//                .frame(width: isAnimating ? 350 : 50 ,height: 100)
//                .animation(Animation.linear(duration: timing))
            
//            RoundedRectangle(cornerRadius: 25.0)
//                .frame(width: isAnimating ? 350 : 50 ,height: 100)
//                .animation(Animation.easeIn(duration: timing))
//
//            RoundedRectangle(cornerRadius: 25.0)
//                .frame(width: isAnimating ? 350 : 50 ,height: 100)
//                .animation(Animation.easeOut(duration: timing))
            
            
//            RoundedRectangle(cornerRadius: 25.0)
//                .frame(width: isAnimating ? 350 : 50 ,height: 100)
//                .animation(Animation.easeInOut(duration: timing))

            
//            Spring
//                        RoundedRectangle(cornerRadius: 25.0)
//                            .frame(width: isAnimating ? 350 : 50 ,height: 100)
//                            .animation(Animation.spring(response: 1.0,dampingFraction: 0.2,blendDuration: 1.0))
            
        }

    }
}

struct AnimationTimingBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        AnimationTimingBootcamp()
    }
}
