//
//  ContextMenuBootcamp.swift
//  SwiftUI-BasicConcept
//
//  Created by Manimaran on 12/16/24.
//

import SwiftUI

struct ContextMenuBootcamp: View {
    @State var backgroundColor: Color = .red
    
    var body: some View {

        VStack(alignment: .leading, spacing: 10.0) {
            Image(systemName: "house.fill")
                .font(.title)
            Text("SwiftUI thinkinf")
                .font(.headline)
            Text("How to use Context Menu")
                .font(.subheadline)
        }
        .foregroundColor(.white)
        .padding(30)
        .background(backgroundColor)
        .cornerRadius(30)
        .contextMenu {
            
            Button(action: {
                backgroundColor = .yellow
            }, label: {
                Label("Shear post ",systemImage: "flame.fill")
            })
            Button(action: {
                backgroundColor = .pink
            }, label: {
Text("Report Post")
            })
            Button(action: {
                backgroundColor = .black
            }, label: {
                Label("Like Post 1",systemImage: "heart.fill")
            })
         
        }
    }
}

struct ContextMenuBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ContextMenuBootcamp()
    }
}
