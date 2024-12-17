//
//  GradientsBootcamp.swift
//  SwiftUI-BasicConcept
//
//  Created by Manimaran on 12/10/24.
//

import SwiftUI

struct GradientsBootcamp: View {
    var body: some View {
        RoundedRectangle(cornerRadius: 25.0)
            .fill(
                
//                Color.red
//                LinearGradient(gradient: Gradient(colors: [Color.yellow,Color.red]), startPoint: .leading, endPoint: .trailing)
            
//                RadialGradient(gradient: Gradient(colors: [Color.red,Color.yellow]), center: .center, startRadius: 5, endRadius: 200)
            
                AngularGradient(gradient: Gradient(colors: [Color.red,Color.blue]), center: .topLeading,angle: .degrees(180 + 45))
            
            )
            .frame(width: 300,height: 200,alignment: .center)
        
    }
}

struct GradientsBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        GradientsBootcamp()
    }
}
