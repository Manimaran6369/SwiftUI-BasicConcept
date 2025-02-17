//
//  TernaryBootcamp.swift
//  SwiftUI-BasicConcept
//
//  Created by Manimaran on 12/13/24.
//

import SwiftUI

struct TernaryBootcamp: View {
    
    @State var isStartingState: Bool = false
    
    var body: some View {
        VStack{
            
            Button("Button: \(isStartingState.description)") {
                isStartingState.toggle()
            }
            .padding()
            Text(isStartingState ? "STARTING STATE" : "ENDING STATE")
            
            RoundedRectangle(cornerRadius: isStartingState ? 25 : 0)
                .fill(isStartingState ? Color.red : Color.blue)
                .frame(width: isStartingState ? 200 : 50,
                       height: isStartingState ? 400 : 50)

           
            Spacer()
        }
        
    }
}

struct TernaryBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        TernaryBootcamp()
    }
}
