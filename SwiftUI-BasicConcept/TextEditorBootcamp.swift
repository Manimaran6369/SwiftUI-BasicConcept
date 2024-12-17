//
//  TextEditorBootcamp.swift
//  SwiftUI-BasicConcept
//
//  Created by Manimaran on 12/16/24.
//

import SwiftUI

struct TextEditorBootcamp: View {
    @State var textEditorText: String = ""
    @State var savedText: String = ""

    var body: some View {

        NavigationView {
            VStack{
                TextEditor(text: $textEditorText)
                    .frame(height: 250)
                    .foregroundColor(.red)
//                    .background(.blue)
                    .colorMultiply(Color.white)
                    .cornerRadius(10)
                Button(action: {
                    savedText = textEditorText
                }, label: {
                    Text("Save".uppercased())
                        .font(.headline)
                        .foregroundColor(.white)
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(Color.blue)
                        .cornerRadius(10)
                    
                })
                Text(savedText)
                Spacer()
            }
            .padding()
            .background(.green)
            .navigationTitle("TextEditor Bootcamp")
        }
    }
}

struct TextEditorBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        TextEditorBootcamp()
    }
}
