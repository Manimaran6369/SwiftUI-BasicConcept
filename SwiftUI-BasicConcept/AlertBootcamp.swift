//
//  AlertBootcamp.swift
//  SwiftUI-BasicConcept
//
//  Created by Manimaran on 12/14/24.
//

import SwiftUI

struct AlertBootcamp: View {
    
    
    @State var showAleart: Bool = false
    @State var backgroundColor: Color = .yellow
//    @State var aleartTitle: String = ""
//    @State var aleartMessage: String = ""
    @State var aleartType: MyAlearts? = nil
    
    enum MyAlearts {
        case sucess
        case error
    }
    
    var body: some View {
        
        ZStack {
            backgroundColor.edgesIgnoringSafeArea(.all)
            
            VStack {
                Button("BUTTON 1") {
                    aleartType = .error
//                    aleartTitle = "ERROR UPLOADING VIDEO"
//                    aleartMessage = "The video could not be upload"
                    showAleart.toggle()
                }
                Button("BUTTON 2") {
                    aleartType = .sucess
//                    aleartTitle = "Sucessfully upload video 🥳" /* control + commend + space */
//                    aleartMessage = "Your video is now public"
                    showAleart.toggle()
                }
                .alert(isPresented: $showAleart) {
                    getAleart()
                   
            }
            }
        }
    }
    func getAleart() -> Alert {
        
        
        switch aleartType {
        case.error:
            return Alert(title: Text("There was an error!!😡"))
        case.sucess:
            return Alert(title: Text("This was sucess!🥳"),message: nil ,dismissButton: .default(Text("OK"),action: {
                backgroundColor = .green
                
            }))
        default :
            
            return Alert(title: Text("ERROR"))
        }
        
        
        
//        -------------->>>>>>
//
//        return Alert(title: Text(aleartTitle)
//        ,message: Text(aleartMessage),
//        dismissButton: .default(Text("OK"))
//
//        )
//        ------------->>>>>>>
//        return  Alert(
//            title: Text("This is the title!!"),
//            message: Text("Here we will describe the error!!!")
////                  , primaryButton: .destructive(Text("DELETE"))
//            , primaryButton: .destructive(Text("DELET"), action: {
//
//                backgroundColor = .red
//            })
//            , secondaryButton: .cancel())
    }
}

struct AlertBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        AlertBootcamp()
    }
}
