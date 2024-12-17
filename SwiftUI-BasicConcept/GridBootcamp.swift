//
//  GridBootcamp.swift
//  SwiftUI-BasicConcept
//
//  Created by Manimaran on 12/12/24.
//

import SwiftUI

struct GridBootcamp: View {
    
    let columns: [GridItem] = [
        
//        GridItem(.adaptive(minimum: 50,maximum: 300),spacing: nil,alignment: nil),
//        GridItem(.adaptive(minimum: 150,maximum: 300),spacing: nil,alignment: nil),
//        GridItem(.adaptive(minimum: 50,maximum: 300),spacing: nil,alignment: nil),
//
        
        //--------------------->>>>>>>>>>>>>>

        GridItem(.flexible(),spacing: 6,alignment: nil),
        GridItem(.flexible(),spacing: 6,alignment: nil),
        GridItem(.flexible(),spacing: 6,alignment: nil),
      
//--------------------->>>>>>>>>>>>>>
//        GridItem(.fixed(50),spacing: nil,alignment: nil),
//        GridItem(.fixed(75),spacing: nil,alignment: nil),
//        GridItem(.fixed(100),spacing: nil,alignment: nil),
//        GridItem(.fixed(75),spacing: nil,alignment: nil),
//        GridItem(.fixed(50),spacing: nil,alignment: nil),

    ]
    var body: some View {
        ScrollView {
            
            Rectangle()
                .fill(.orange)
                .frame(height: 400)
            
            LazyVGrid(
                columns: columns,
                alignment:.center,
                spacing: 6,
                pinnedViews: [.sectionHeaders]
                
               ) {
                   Section(header:
                            Text("Section1")
                    .foregroundColor(.white)
                    .font(.title)
                    .frame(maxWidth: .infinity,alignment: .leading)
                    .background(.blue)
                    .padding()
                           
                   ) {
                       ForEach(0..<50) { index in
                           Rectangle()
                               .frame(height: 150)
                       }

                   }
                   
                   Section(header:
                            Text("Section2")
                    .foregroundColor(.white)
                    .font(.title)
                    .frame(maxWidth: .infinity,alignment: .leading)
                    .background(.red)
                    .padding()
                           
                   ) {
                       
                       ForEach(0..<50) { index in
                           Rectangle()
                               .fill(.green)
                               .frame(height: 150)
                       }

                   }
                   
            }
            
         
        }
     
    }
}

struct GridBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        GridBootcamp()
    }
}
