//
//  ScrollViewBootcamp.swift
//  SwiftUI-BasicConcept
//
//  Created by Manimaran on 12/12/24.
//

import SwiftUI

struct ScrollViewBootcamp: View {
    var body: some View {
        
        
        ScrollView {
            VStack {
                ForEach(0..<10) { index in
                    ScrollView(.horizontal,showsIndicators: false) {
                        HStack {
                            ForEach(0..<20) { index in
                                RoundedRectangle(cornerRadius: 25.0)
                                    .fill(.white)
                                    .frame(width: 200,height: 150)
                                    .shadow(radius: 10)
                                    .padding()
                            }
                            
                        }
                    }
                   
                }
            }
        }
//        ScrollView(.horizontal,showsIndicators: false) {
//            HStack {
//                ForEach(0..<50) { index in
//                    Rectangle()
//                        .fill(.orange)
//                        .frame(width: 300,height: 300)
//                }
//
//
//            }
//        }
//
       
    }
}

struct ScrollViewBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ScrollViewBootcamp()
    }
}
