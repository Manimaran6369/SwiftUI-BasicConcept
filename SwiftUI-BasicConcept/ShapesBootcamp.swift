//
//  ShapesBootcamp.swift
//  SwiftUI-BasicConcept
//
//  Created by Manimaran on 12/10/24.
//

import SwiftUI

struct ShapesBootcamp: View {
    var body: some View {
//        Circle()
//        Ellipse()
//        Capsule(style: .circular)
//        Rectangle()
        RoundedRectangle(cornerRadius: 10)
//            .fill(Color.green)
//            .foregroundColor(Color.pink)
//            .stroke(Color.orange, style: StrokeStyle(lineWidth: 23,lineCap: .round,dash: [10]))
//            .trim(from: 0.4,to: 1.0)
//            .stroke(Color.red,lineWidth: 50)
            .frame(width: 200,height: 100)

    }
}

struct ShapesBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ShapesBootcamp()
    }
}
