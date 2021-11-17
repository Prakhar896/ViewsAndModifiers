//
//  ContentView.swift
//  ViewsAndModifiers
//
//  Created by Prakhar Trivedi on 17/11/21.
//

import SwiftUI

struct ContentView: View {
//    @State private var useRedText = false
//    let motto1 = Text("Draco dormiens")
    var motto1: some View {
        Text("Draco dormiens")
    }
    var motto2 = Text("nunquam titillandus")
    
//    var spells: some View {
//        Group {
//            Text("Lumos")
//            Text("Obliviate")
//        }
//    }
    
    @ViewBuilder var spells: some View {
        Text("Lumos")
        Text("Obliviate")
    }
    
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
        
//        Button("Hello, world!") {
//            useRedText.toggle()
//        }
//        .foregroundColor(useRedText ? .red: .blue)
        
//        VStack {
//            Text("Gryffindor")
//                .font(.largeTitle) //  the child's modifier is prioritised
//                .blur(radius: 0) // this will not work as blur is a regular modifier
//            Text("Hufflepuff")
//            Text("Ravenclaw")
//            Text("Slytherin")
//        }
//        .font(.title) // this is called an environment modifier
//        .blur(radius: 5) // regular modifiers are separate from environment modifiers
        
//        VStack {
////            motto1
////                .foregroundColor(.red)
////            motto2
////                .foregroundColor(.blue)
//            spells
//        }
        
        spells
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
