//
//  ExtractSubviewsBootcamp.swift
//  SwiftUI-BasicConcept
//
//  Created by Manimaran on 12/13/24.
//

import SwiftUI

struct ExtractSubviewsBootcamp: View {
    var body: some View {
        ZStack {
//            Background
            Color.purple.edgesIgnoringSafeArea(.all)
            
//            Content
          contentLayer
            

        }
    }
    var contentLayer: some View {
        HStack {
            MyItem(title: "Apple", count: 1, color: .red)
            MyItem(title: "Orang", count: 10, color: .orange)
            MyItem(title: "Banana", count: 40, color: .yellow)
        }
    }
}

struct ExtractSubviewsBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ExtractSubviewsBootcamp()
    }
}

struct MyItem: View {
    
    let title: String
    let count: Int
    let color: Color
    
    var body: some View {
        VStack{
            Text("\(count)")
            Text("\(title)")
        }
        .padding()
        .background(color)
        .cornerRadius(10)
    }
}
