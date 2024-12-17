//
//  SpacerBootcamp.swift
//  SwiftUI-BasicConcept
//
//  Created by Manimaran on 12/11/24.
//

import SwiftUI

struct SpacerBootcamp: View {
    var body: some View {
        VStack{
            HStack(spacing: 0){
            
                Image(systemName: "xmark")
                Spacer()
                Image(systemName: "gear")
                
                
                
    //            Spacer(minLength: 0)
    //                .frame(height: 10)
    //                .background(Color.orange)
    //
    //            Rectangle()
    //                .frame(width: 100,height: 100)
    //            Spacer()
    //                .frame(height: 10)
    //                .background(Color.orange)
    //            Rectangle()
    //                .fill(Color.orange)
    //                .frame(width: 100,height: 100)
    //            Spacer()
    //                .frame(height: 10)
    //                .background(Color.orange)
    //            Rectangle()
    //                .fill(Color.red)
    //                .frame(width: 100,height: 100)
    //            Spacer()
    //                .frame(height: 10)
    //                .background(Color.orange)
            }
            .font(.title)
    //        .background(Color.green)
            .padding(.horizontal)
    //        .background(Color.blue)
            Spacer()
            Rectangle()
                .frame(height: 50)
        }
       

    }
}

struct SpacerBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        SpacerBootcamp()
    }
}
