//
//  ListBootCamp.swift
//  SwiftUI-BasicConcept
//
//  Created by Manimaran on 12/14/24.
//

import SwiftUI

struct ListBootcamp: View {
    
    @State var fruits: [String] = ["Apple","Banana","orange","peach"]
    @State var veggies: [String] = ["tomato","potato","carrot"]
    
    var body: some View {
        
        NavigationView {
            List {
                Section(
                    header:
                        
                        HStack {
                            Text("Fruits")
                            Image(systemName: "flame.fill")
                        }
                        .font(.headline)
                        .foregroundColor(.orange)
              
                
                ) {
                    ForEach(fruits,id: \.self) { fruit in
                        Text(fruit.capitalized)
                            .font(.caption)
                            .foregroundColor(.white)
                            .padding(.vertical)
//                            .frame(maxWidth: .infinity,maxHeight: .infinity)
//                            .background(.pink)
                    }
                    .onDelete(perform: delet)
                    .onMove(perform: move)
                    .listRowBackground(Color.blue)
                }
                
                Section(header: Text("Veggies")) {
                    ForEach(veggies, id: \.self) { veggies in
                        Text(veggies.capitalized)
                    }
                }

            }
            .accentColor(.purple)
//            .listStyle(InsetGroupedListStyle())
//            .listStyle(DefaultListStyle())
//            .listStyle(SidebarListStyle())
            .navigationTitle("Grocery List")
            .navigationBarItems(leading: EditButton(),trailing: addButton)
            
            
        }
        .accentColor(.red)
      
    }
    
    var addButton: some View {
        Button("Add" , action: {
    add()
    
})
    }
    
    func delet(indexSet: IndexSet) {
        fruits.remove(atOffsets: indexSet)

    }
    func move(indices: IndexSet, newOffset: Int) {
        fruits.move(fromOffsets: indices, toOffset: newOffset)
        
    }
    func add() {
        fruits.append("cont")
    }
}

struct ListBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ListBootcamp()
    }
}
