//
//  ColorPikerBootcamp.swift
//  SwiftUI-BasicConcept
//
//  Created by Manimaran on 12/16/24.
//

import SwiftUI

struct ColorPikerBootcamp: View {
    
    @State var backgroundColor: Color = .green
    var body: some View {
       
        ZStack {
         backgroundColor.edgesIgnoringSafeArea(.all)
            
            ColorPicker("Selet a color", selection: $backgroundColor,supportsOpacity: true)
                .padding()
                .background(.black)
                .cornerRadius(20)
                .foregroundColor(.white)
                .font(.headline)
                .padding(50)
        }
        
    }
}

struct ColorPikerBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ColorPikerBootcamp()
    }
}
