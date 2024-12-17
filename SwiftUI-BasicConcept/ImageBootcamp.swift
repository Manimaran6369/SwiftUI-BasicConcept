//
//  ImageBootcamp.swift
//  SwiftUI-BasicConcept
//
//  Created by Manimaran on 12/10/24.
//

import SwiftUI

struct ImageBootcamp: View {
    var body: some View {
        
        Image("sansa")
//            .renderingMode(.template)
            .resizable()
//            .aspectRatio( contentMode: .fill)
            .foregroundColor(.pink)
            .scaledToFill()
            .frame(width: 300,height: 300)
//            .clipped()
//            .cornerRadius(30)
//            .clipShape(
//                Circle()
//
//
//            )
    }
}

struct ImageBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ImageBootcamp()
    }
}
