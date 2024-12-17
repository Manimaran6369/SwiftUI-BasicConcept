//
//  ForEachBootcamp.swift
//  SwiftUI-BasicConcept
//
//  Created by Manimaran on 12/12/24.
//

import SwiftUI

struct ForEachBootcamp: View {
    let data: [String] = ["Hi","hello","kurnak","Everyone"]
    let myString: String = "Heloo"
    var body: some View {
        
        VStack {
            Text("hi")
            
//            ForEach(data.indices) { index in
//                Text("\(data[index]): \(index)")
//
//            }
//            ForEach(0..<100) { index in
//                Circle()
//                    .frame(height: 20)
//            }
        }
        
        
        
//        VStack {
//
//            ForEach(0..<10) { index in
//                HStack {
//                    Circle()
//                        .frame(width: 20,height: 20)
//                    Text("index is: \(index)")
//                }
//
//            }
//        }
    }
}

struct ForEachBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ForEachBootcamp()
    }
}
