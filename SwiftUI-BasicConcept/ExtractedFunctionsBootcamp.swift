//
//  ExtractedFunctionsBootcamp.swift
//  SwiftUI-BasicConcept
//
//  Created by Manimaran on 12/12/24.
//

import SwiftUI

struct ExtractedFunctionsBootcamp: View {
    @State var backgroungcolor: Color = Color.yellow
    
    var body: some View {

        ZStack{
//            Bacground
            backgroungcolor
                .edgesIgnoringSafeArea(.all)
            contentLayer

        }
    }
    var contentLayer: some View {
                VStack {
                    Text("Title")
                        .font(.largeTitle)
                    Button(action: {
                        buttonPressed()
                    }, label: {
                        Text("Press Me")
                            .font(.headline)
                            .foregroundColor(.white)
                            .padding()
                            .background(.black)
                            .cornerRadius(10)
                    })
                }
    }
    func buttonPressed() {
        backgroungcolor = .purple
    }
}

struct ExtractedFunctionsBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ExtractedFunctionsBootcamp()
    }
}
