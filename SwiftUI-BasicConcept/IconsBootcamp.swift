//
//  IconsBootcamp.swift
//  SwiftUI-BasicConcept
//
//  Created by Manimaran on 12/10/24.
//

import SwiftUI

struct IconsBootcamp: View {
    var body: some View {
        Image(systemName: "heart.fill")
            .font(.system(size: 200))
            .scaledToFill()
            .foregroundColor(Color.pink)
            .frame(width: 300,height: 300)
            .clipped()
        
    }
}

struct IconsBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        IconsBootcamp()
    }
}
