//
//  TextBootcamp.swift
//  SwiftUI-BasicConcept
//
//  Created by Manimaran on 12/10/24.
//

import SwiftUI

struct TextBootcamp: View {
    var body: some View {
        Text("Manimaran is an a Ios develoiper at Apple colabration in to the world!!!".uppercased())
//            .font(.title)
//            .fontWeight(.heavy)
//            .underline(true,color: .red)
//            .italic()
//            .strikethrough(true,color: .red)
            
//            .font(.system(size: 24,weight: .black,design: .monospaced))
            .multilineTextAlignment(.leading)
//            .baselineOffset(-50)
            .kerning(5)
            .foregroundColor(.green)
            .frame(width: 200,height: 100,alignment: .center)
            .minimumScaleFactor(2)
    }
}

struct TextBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        TextBootcamp()
    }
}
