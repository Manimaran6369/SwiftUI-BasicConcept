//
//  TransitionBootcamp.swift
//  SwiftUI-BasicConcept
//
//  Created by Manimaran on 12/13/24.
//

import SwiftUI

struct TransitionBootcamp: View {
    @State var showView: Bool = false
    
    var body: some View {
     
        ZStack {
            
            VStack{
                Button("Button") {
                    showView.toggle()
                }
                Spacer()
            }
            RoundedRectangle(cornerRadius: 30)
                .frame(height: UIScreen.main.bounds.height * 0.5)
            //   .opacity(showView ? 1.0 : 0.0)
                .transition(.slide)
//                .transition(.move(edge: .bottom))
//                .transition(AnyTransition.opacity.animation(.easeInOut))
//                .transition(.asymmetric(insertion: .move(edge: .bottom), removal: AnyTransition.opacity.animation(.easeInOut)))
//                .animation(.easeInOut)
        }
        .edgesIgnoringSafeArea(.bottom)
    }
}

struct TransitionBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        TransitionBootcamp()
    }
}
