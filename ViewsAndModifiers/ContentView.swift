//
//  ContentView.swift
//  ViewsAndModifiers
//
//  Created by Prakhar Trivedi on 17/11/21.
//

import SwiftUI

struct ContentView: View {
    @State private var useRedText = false
    
    var body: some View {
        //        Text("Hello, world!")
        //            .frame(maxWidth: .infinity, maxHeight: .infinity)
        //            .background(.red)
        
        //        Button("Hello, world!") {
        //            print(type(of: self.body))
        //        }
        //        //        .background(.red)
        //        //        .frame(width: 200, height: 200)
        //        .frame(width: 200, height: 200)
        //        .background(.red)
        
        //        Text("Hello world")
        //            .padding()
        //            .background(.red)
        //            .padding()
        //            .background(.blue)
        //            .padding()
        //            .background(.green)
        //            .padding()
        //            .background(.yellow)
        
//        Text("Hello")
//        Text("World")
//        Text("Goodbye")
//        Text("World")
        
        Button("Hello, world!") {
            useRedText.toggle()
        }
        .foregroundColor(useRedText ? .red: .blue)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
