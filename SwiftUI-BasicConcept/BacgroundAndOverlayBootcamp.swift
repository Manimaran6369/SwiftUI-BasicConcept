//
//  BacgroundAndOverlayBootcamp.swift
//  SwiftUI-BasicConcept
//
//  Created by Manimaran on 12/11/24.
//

import SwiftUI

struct BacgroundAndOverlayBootcamp: View {
    var body: some View {
        Image(systemName: "heart.fill")
            .font(.system(size: 40))
            .background(
            Circle()
                .fill(
                    LinearGradient(gradient: Gradient(colors: [Color.green,Color.yellow]), startPoint: .topLeading, endPoint: .bottomTrailing)
                
                )
                .frame(width: 100,height: 100)
                .shadow(color: .black,radius: 10,x: 0.0,y: 10)
                .overlay(
                    
                    Circle()
                        .frame(width: 35,height: 35)
                        .overlay(
                        Text("3")
                            .font(.headline)
                            .foregroundColor(.white)
                        )
                        .shadow(color: .black,radius: 10,x: 0.0,y: 10)
                    ,alignment: .bottomTrailing
                        )
            
            )
        
//        ----------------------->>>>>
//        Rectangle()
//            .frame(width: 100,height: 100)
//            .overlay(
//            Rectangle()
//                .fill(.pink)
//                .frame(width: 50,height: 50)
//            ,alignment: .topLeading
//            )
//            .background(
//                Rectangle()
//                    .fill(.green)
//                    .frame(width: 150,height: 150)
//                ,alignment: .bottomTrailing
//
//            )
        
//        ---------------------------------------->>>
        
//        Circle()
//            .fill(Color.pink)
//            .frame(width: 100,height: 100,alignment: .center)
//            .overlay(
//        Text("1")
//            .font(.largeTitle)
//            .foregroundColor(.white)
//            )
//            .background(
//            Circle()
//                .fill(.purple)
//                .frame(width: 120,height: 120,alignment: .center)
//            )
        
//        --------------------------0-00--0-0------------>>>
//        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
//            .background(
//
////                Color.red
////                LinearGradient(gradient: Gradient(colors: [Color.red,Color.green]), startPoint: .leading, endPoint: .trailing)
//                Circle()
//
//                    .fill(LinearGradient(gradient: Gradient(colors: [Color.white,Color.orange]), startPoint: .leading, endPoint: .trailing))
//                    .frame(width: 100,height: 100,alignment: .center)
//              )
//
//            .background(
//            Circle()
//                .fill(LinearGradient(gradient: Gradient(colors: [Color.yellow,Color.red]), startPoint: .leading, endPoint: .trailing))
//                .frame(width: 120,height: 120,alignment: .center)
//            )
    }
}

struct BacgroundAndOverlayBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        BacgroundAndOverlayBootcamp()
    }
}
