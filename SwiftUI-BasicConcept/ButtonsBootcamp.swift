//
//  ButtonsBootcamp.swift
//  SwiftUI-BasicConcept
//
//  Created by Manimaran on 12/12/24.
//

import SwiftUI

struct ButtonsBootcamp: View {
    
    @State var tittle: String = "This is my title"
    
    var body: some View {
        VStack(spacing: 20) {
            Text(tittle)
            Button("Press Me") {
                self.tittle = "Button was Pressed"
            }
            .accentColor(.red)
            
            Button(action:{
                self.tittle = "Button 2"
            },label: {
                Text("SAVE".uppercased())
                    .background(.blue)
                    .foregroundColor(.white)
                    .padding()
                    .padding(.horizontal,20)
                    .background(
                        Color.blue
                            .cornerRadius(10)
                            .shadow(radius: 10)
                    )
            })
            
            Button(action: {
                self.tittle = "Button 3"
                
            },label: {
                Circle()
                    .fill(.white)
                    .frame(width: 77,height: 77)
                    .shadow(radius: 10)
                    .overlay(
                    Image(systemName: "heart.fill")
                        .font(.largeTitle)
                        .foregroundColor(.red)
                    
                    )
            })
            
            Button(action: {
                
                self.tittle = "Button 4"
                
            }, label: {
                Text("Finshed".uppercased())
                    .font(.callout)
                    .bold()
                    .foregroundColor(.green)
                    .padding()
                    .padding(.horizontal,20)
                    .background(
                        Capsule()
                            .stroke(Color.gray,lineWidth: 2)
                    )
                
            })
        }
    }
}

struct ButtonsBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ButtonsBootcamp()
    }
}
