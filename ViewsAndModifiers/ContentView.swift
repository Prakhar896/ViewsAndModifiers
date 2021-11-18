//
//  ContentView.swift
//  ViewsAndModifiers
//
//  Created by Prakhar Trivedi on 17/11/21.
//

import SwiftUI

struct GridStack<Content: View>: View {
    let rows: Int
    let columns: Int
    @ViewBuilder let content: (Int, Int) -> Content
    
    var body: some View {
        VStack {
            ForEach(0..<rows, id: \.self) { row in
                HStack {
                    ForEach(0..<columns, id: \.self) { column in
                        content(row, column)
                    }
                }
            }
        }
    }
}

//struct Watermark: ViewModifier {
//    var text: String
//
//    func body(content: Content) -> some View {
//        ZStack(alignment: .bottomTrailing) {
//            content
//
//            Text(text)
//                .font(.caption)
//                .foregroundColor(.white)
//                .padding(5)
//                .background(.black)
//        }
//    }
//}
//
//extension View {
//    func watermarked(with text: String) -> some View {
//        modifier(Watermark(text: text))
//    }
//}
//
//struct Title: ViewModifier {
//    func body(content: Content) -> some View {
//        content
//            .font(.largeTitle)
//            .foregroundColor(.white)
//            .padding()
//            .background(.blue)
//            .clipShape(RoundedRectangle(cornerRadius: 10))
//    }
//}
//
//extension View {
//    func titleStyle() -> some View {
//        modifier(Title())
//    }
//}

//struct CapsuleText: View {
//    var text: String
//
//    var body: some View {
//        Text(text)
//            .font(.largeTitle)
//            .padding()
////            .foregroundColor(.white)
//            .background(.blue)
//            .clipShape(Capsule())
//    }
//}

struct ContentView: View {
    //    @State private var useRedText = false
    //    let motto1 = Text("Draco dormiens")
    //    var motto1: some View {
    //        Text("Draco dormiens")
    //    }
    //    var motto2 = Text("nunquam titillandus")
    
    //    var spells: some View {
    //        Group {
    //            Text("Lumos")
    //            Text("Obliviate")
    //        }
    //    }
    
    //    @ViewBuilder var spells: some View {
    //        Text("Lumos")
    //        Text("Obliviate")
    //    }
    
    var body: some View {
        GridStack(rows: 4, columns: 4) { row, col in
            Image(systemName: "\(row * 4 + col).circle")
            Text("R\(row) C\(col)")
        }
        //        VStack {
        //            Text("Hello world")
        //    //            .modifier(Title())
        //                .titleStyle()
        //            Color.blue
        //                .frame(width: 300, height: 200)
        //                .watermarked(with: "Prakhar Trivedi")
        //        }
        //        VStack(spacing: 10) {
        //            CapsuleText(text: "First")
        //                .foregroundColor(.white)
        //            CapsuleText(text: "Second")
        //                .foregroundColor(.yellow)
        //        }
        
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
        
        //        spells
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
