//
//  PaddingAndSpacerBootcamp.swift
//  SwiftUI-BasicConcept
//
//  Created by Manimaran on 12/11/24.
//

import SwiftUI

struct PaddingAndSpacerBootcamp: View {
    var body: some View {
        VStack(alignment: .leading){
            Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
            
                .font(.largeTitle)
                .fontWeight(.semibold)
//                .frame(maxWidth: .infinity,alignment: .leading)
                .padding(.bottom,20)
            Text("This is the new writing code and the manager calling to tha variable reson and multiple sting avilabwl im swift xcodwe")
        }
//        .background(Color.pink)
        .padding()
        .padding(.vertical,30)
        .background(
            Color.white
                .shadow(
                    color: .black.opacity(0.3),
                    radius:10,
                    x: 0.0,y: 0.0
                
                )
                .padding(.horizontal,10)
        )
//        .padding(.horizontal,20)
//        .background(Color.green)

        
        
//            .background(Color.yellow)
////            .padding()
//            .padding(.all,10)
//            .padding(.leading,40)
//            .background(Color.red)
    }
}

struct PaddingAndSpacerBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        PaddingAndSpacerBootcamp()
    }
}
