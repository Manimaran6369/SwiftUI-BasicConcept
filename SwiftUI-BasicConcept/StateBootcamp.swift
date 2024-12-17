//
//  StateBootcamp.swift
//  SwiftUI-BasicConcept
//
//  Created by Manimaran on 12/12/24.
//

import SwiftUI

struct StateBootcamp: View {
    
    @State var backgroundColr: Color = Color.green
    @State var myTittle: String = "My Title"
    @State var count:Int = 0
    var body: some View {
        ZStack {
//            Background
            backgroundColr
                .edgesIgnoringSafeArea(.all)
            // content
            VStack(spacing: 20){
                Text(myTittle)
                    .font(.title)
                Text("Count: \(count)")
                    .font(.headline)
                    .underline()
                HStack(spacing: 20){
                    Button("BUTTON 1") {
                        backgroundColr = .red
                        myTittle = "BUTTON 1 WAS PRESSED"
                        count += 1
                    }
                    Button("BUTTON 2") {
                        backgroundColr = .yellow
                        myTittle = "BUTTON 2 WAS PRESSED"
                        count -= 1
                    }
                    
                }
                
            }
            .foregroundColor(.white)
        }
    }
}

struct StateBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        StateBootcamp()
    }
}
