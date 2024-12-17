//
//  VHZ-StacksBootcamp.swift
//  SwiftUI-BasicConcept
//
//  Created by Manimaran on 12/11/24.
//

import SwiftUI

struct VHZ_StacksBootcamp: View {
//    Vstacks --> Vertical
//    Hstacks --> Horizontal
//    Zstacks --> zIndex (back to front)
    
    var body: some View {
        
        VStack(alignment:.center,spacing: 50){
            
            ZStack{
                Circle()
                    .frame(width: 100,height: 100)
                Text("1")
                    .foregroundColor(.white)
            }
            Text("2")
                .foregroundColor(.white)
                .background(
                Circle()
                    .frame(width: 100,height: 100)
                )
            HStack {
                Circle()
                
                    .frame(width: 100,height: 100)
                    .overlay(
                        Text("4")
                            .foregroundColor(.white)
                    )
                Rectangle()
                    .frame(width: 100,height: 100)
                    .overlay(
                    Text("hello")
                        .foregroundColor(.white)
                        
                    
                    )
            }
        }
        
        
        
        
        ////        ------------------------>>>>>>>

//        VStack(alignment:.center,spacing: 20){
//            Text("5")
//                .font(.largeTitle)
//                .underline()
//            Text("Items in your Cart:")
//                .font(.headline)
//
//        }
////        ------------------------>>>>>>>
//        ZStack(alignment:.top) {
//            Rectangle()
//                .fill(.yellow)
//                .frame(width: 300,height: 500)
//
//            VStack(alignment:.leading) {
//                Rectangle()
//                .fill(.blue)
//                .frame(width: 79,height: 79)
//                Rectangle()
//                .fill(.orange)
//                .frame(width: 100,height: 100)
//
//                HStack(alignment:.bottom){
//                    Rectangle()
//                    .fill(.green)
//                    .frame(width: 30,height: 40)
//                    Rectangle()
//                        .fill(.red)
//                        .frame(width: 25,height: 25)
//                    Rectangle()
//                        .fill(.purple)
//                        .frame(width: 40,height: 40)
//
//                }
//                .background(.white)
//
//            }
//            .background(.black)
//        }
//
        
//        ------------------------>>>
        
//        ZStack(alignment:.center,spacing: 0,content: {
//            Rectangle()
//                            .fill(.blue)
//                            .frame(width: 100,height: 100)
//                        Rectangle()
//                            .fill(.orange)
//                            .frame(width: 100,height: 100)
//                        Rectangle()
//                            .fill(.green)
//                            .frame(width: 100,height: 100)
//        })
            
//       --------------------------->>>>>
        
//        VStack {
//            Rectangle()
//                .fill(.blue)
//                .frame(width: 100,height: 100)
//            Rectangle()
//                .fill(.orange)
//                .frame(width: 100,height: 100)
//            Rectangle()
//                .fill(.green)
//                .frame(width: 100,height: 100)
//        }
    }
}

struct VHZ_StacksBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        VHZ_StacksBootcamp()
    }
}
