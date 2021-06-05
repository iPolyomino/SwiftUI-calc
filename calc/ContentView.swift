//
//  ContentView.swift
//  calc
//
//  Created by 萩倉丈 on 2021/06/05.
//

import SwiftUI

struct ContentView: View {
    @State var adultStr = ""
    @State var childStr = ""
    var body: some View {
        VStack{
            Text("料金は \(calc()) 円です。")
            HStack{
                Text("大人")
                TextField("0", text: $adultStr)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .keyboardType(.numberPad)
            }
            HStack{
                Text("子供")
                TextField("0", text: $childStr)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .keyboardType(.numberPad)
            }
        }
    }
    
    // Int? 型
    // → Int 型 もしくは nil
    func calc () -> Int {
        var adult = 0, child = 0
        if let a = Int(adultStr) {
            adult = a
        }
        if let c = Int(childStr) {
            child = c
        }
//        guard let adult = Int(adultStr) else {
//            return 0
//        }
//        guard let child = Int(childStr) else {
//            return 0
//        }
        
        let money = adult * 1200 + child * 500
        return money
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
