//
//  PickerBootcamp.swift
//  SwiftUI-BasicConcept
//
//  Created by Manimaran on 12/16/24.
//

import SwiftUI

struct PickerBootcamp: View {
    
    @State var selection: String = "1"
    let filterOption: [String] = [
    
    "Most Resent","Most Popular","Most Like"
    ]
    
    init() {
        UISegmentedControl.appearance().selectedSegmentTintColor = UIColor.red
        let attributes: [NSAttributedString.Key:Any] = [
            .foregroundColor: UIColor.white
        ]
        UISegmentedControl.appearance().setTitleTextAttributes(attributes, for: .selected)
    }
    
    var body: some View {
        
    Picker(selection: $selection, label: Text("pICKER"),
           content: {
        ForEach(filterOption.indices) { index in
            Text(filterOption[index])
                .tag(filterOption[index])
            
        }
    })
    .pickerStyle(SegmentedPickerStyle())
//        Picker(selection: $selection,
//               label:
//                HStack {
//            Text("Filter")
//            Text(selection)
//        }
//            .font(.headline)
//            .foregroundColor(.white)
//            .padding()
//            .background(Color.blue)
//            .cornerRadius(10)
//            .shadow(color: Color.blue.opacity(0.3), radius: 10, x: 0,y: 10)
//
//               ,
//
//               content: {
//
//            ForEach(filterOption, id: \.self) { option in
//                HStack {
//                    Text(option)
//                    Image(systemName: "heart.fill")
//
//                }
//                .tag(option)
//
//            }
//
//        })
//        .pickerStyle(WheelPickerStyle())
        
        
//        VStack {
//            HStack {
//                Text("Age")
//                Text(selection)
//            }
//            Picker(selection: $selection ,label: Text("Picker") ,content: {
//
//                ForEach(18..<100) { number in
//                    Text("\(number)")
//                        .font(.headline)
//                        .foregroundColor(.red)
//                        .tag("\(number)")
//                }
//
//            })
//            .pickerStyle(WheelPickerStyle())
//        }

    }
}

struct PickerBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        PickerBootcamp()
    }
}
