//
//  ActionsheetBootcamp.swift
//  SwiftUI-BasicConcept
//
//  Created by Manimaran on 12/15/24.
//

import SwiftUI

struct ActionsheetBootcamp: View {
    
    @State var showActionSheet: Bool = false
    @State var actionSheetOption: ActionSheetOption = .isOtherPost
    
    enum ActionSheetOption {
        case isMypost
        case isOtherPost
    }
    
    var body: some View {
        
        VStack {
            HStack {
                Circle()
                    .frame(width: 30,height: 30)
                Text("@username")
                Spacer()
                Button(action: {
                    actionSheetOption = .isOtherPost
                    showActionSheet.toggle()
                }, label: {
                    Image(systemName: "ellipsis")

                })
                .accentColor(.black)
            }
            .padding(.horizontal)
            
            Rectangle()
                .aspectRatio(1.0, contentMode: .fit)
        }
  
        .actionSheet(isPresented: $showActionSheet) {
//            ActionSheet(title: Text("THIS IS THE TITLE!"))
            getActionSheet()
        }

    }
    
    func getActionSheet() -> ActionSheet {
        
        let shareButton : ActionSheet.Button = .default(Text("Share")) {
            
        }
        let reportButton : ActionSheet.Button = .destructive(Text("Report")) {
            
        }
        let deletButton : ActionSheet.Button = .default(Text("Delet")) {
            
        }
        let cancleButton : ActionSheet.Button = .default(Text("Cancle")) {
            
        }
        let title = Text("What would you like to do?"
        )
        
        switch actionSheetOption {
        case.isOtherPost:
            return ActionSheet(title:title,message: nil,buttons: [shareButton,reportButton,cancleButton])
        case.isMypost:
            return ActionSheet(title: title,message: nil,buttons: [shareButton,reportButton,deletButton,cancleButton])
            
        }
//        return  ActionSheet(title: Text("THIS IS THE TITLE!"))
        
//        let button1: ActionSheet.Button = .default(Text("DEFAULT"))
//        let button2: ActionSheet.Button = .destructive(Text("DESTRAUCTIVE"))
//        let button3: ActionSheet.Button = .cancel()
//
//
//
//        return ActionSheet(title: Text("The found Leader"),message: Text("This is so good"),buttons: [button1,button1,button1,button2,button3])
    }
}

struct ActionsheetBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ActionsheetBootcamp()
    }
}
