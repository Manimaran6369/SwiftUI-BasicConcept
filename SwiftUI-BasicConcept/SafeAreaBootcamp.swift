//
//  SafeAreaBootcamp.swift
//  SwiftUI-BasicConcept
//
//  Created by Manimaran on 12/12/24.
//

import SwiftUI

struct SafeAreaBootcamp: View {
    var body: some View {
       
            ScrollView {
                VStack {
                    Text("Title")
                        .font(.largeTitle)
                        .frame(maxWidth: .infinity,maxHeight: .infinity,alignment: .leading)
                    ForEach(0..<10) { index in
                        RoundedRectangle(cornerRadius: 25.0)
                            .fill(.white)
                            .frame(height: 150)
                            .shadow(radius: 10)
                            .padding(20)
                    }
                }
            
            }
        
   
            .background(Color.red
//                .edgesIgnoringSafeArea(.all) old
                .ignoresSafeArea()
        )
//        ZStack {
//
////            Background
//            Color.green
//
//                .edgesIgnoringSafeArea(.all)
////            Forground
//
//            VStack {
//                Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
//                Spacer()
//            }
//            .frame(maxWidth: .infinity,maxHeight: .infinity)
//            .background(Color.red)
//        }
      
           
    }
}

struct SafeAreaBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        SafeAreaBootcamp()
    }
}
