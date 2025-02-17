//
//  PopoverBootcamp.swift
//  SwiftUI-BasicConcept
//
//  Created by Manimaran on 12/13/24.
//

// sheets
// animation
// transitions

import SwiftUI

struct PopoverBootcamp: View {
    
    @State var showNewScreen:Bool = false
    
    var body: some View {
        ZStack {
            Color.yellow.edgesIgnoringSafeArea(.all)
            
            VStack {
                Button("Button") {
                    showNewScreen.toggle()
                }
                .font(.largeTitle)
                Spacer()
            }
//            METHOD 1 - SHHET
//            .sheet(isPresented: $showNewScreen) {
//                NewScreen()
//            }
            
//                METHOD 2 - TRANSITION
//            ZStack{
//                if showNewScreen {
//                    NewScreen(showNewScreen: $showNewScreen)
//                        .padding(.top,100)
//                        .transition(.move(edge: .bottom))
//                        .animation(.spring())
//                }
//            }
//            .zIndex(2.0)
            
//            METHOD 3 - ANIMATION OFFSET
            
            NewScreen(showNewScreen: $showNewScreen)
                .padding(.top,100)
                .offset(y:showNewScreen ? 0 : UIScreen.main.bounds.height)
                .animation(.spring())
           
        }
    }
}

struct NewScreen: View {
    
    @Environment(\.presentationMode) var presentationMode
    @Binding var showNewScreen: Bool
    
    
    var body: some View {
        ZStack(alignment: .topLeading) {
            
            Color.pink.edgesIgnoringSafeArea(.all)
            
            Button(action: {
//                presentationMode.wrappedValue.dismiss()
                showNewScreen.toggle()
            }, label: {
                Image(systemName: "xmark")
                    .foregroundColor(.white)
                    .font(.largeTitle)
                    .padding(20)
            })
        }
    }
}

struct PopoverBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        PopoverBootcamp()
//        NewScreen()
    }
}
