//
//  ColorsBootcamp.swift
//  SwiftUI-BasicConcept
//
//  Created by Manimaran on 12/10/24.
//

import SwiftUI

struct ColorsBootcamp: View {
    var body: some View {
        RoundedRectangle(cornerRadius: 22.0)
            .fill(
                
//                Color.primary
//                Color(UIColor.secondarySystemBackground)
                Color("CustomColor")
            
            )
//            .fill(
//                Color()
//            )
            .frame(width: 300,height: 200,alignment: .center)
//            .shadow(radius: 10)
            .shadow(color:  Color("CustomColor").opacity(0.2), radius: 10,x: -20,y: -20)
      
    }
}

struct ColorsBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ColorsBootcamp()
    }
}
