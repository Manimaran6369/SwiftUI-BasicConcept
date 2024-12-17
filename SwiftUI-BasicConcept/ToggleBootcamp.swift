//
//  ToggleBootcamp.swift
//  SwiftUI-BasicConcept
//
//  Created by Manimaran on 12/16/24.
//

import SwiftUI

struct ToggleBootcamp: View {
    
    @State var toggleIsOn: Bool = false
    
    var body: some View {
        
        VStack {
            HStack {
                Text("Status:")
                Text(toggleIsOn ? "Online" : "Offline")
            }
            Toggle (
        isOn: $toggleIsOn,
        label: {
               Text("Lable")
           })
            .toggleStyle(SwitchToggleStyle(tint: Color.red))
            
            Spacer()
        }
        .padding(.horizontal,100)

    }
}

struct ToggleBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ToggleBootcamp()
    }
}
