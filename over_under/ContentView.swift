//
//  ContentView.swift
//  over_under
//
//  Created by Zach Mommaerts on 3/2/23.
//

import SwiftUI

struct ContentView: View {
    
    @State private var num = 0
    @State private var previousNum = 0
    @State private var switcher = true
    
    func increase(){
        let rand = Int.random(in: 1...10)
        num += rand
    }
    
    func decrease(){
        let rand = Int.random(in: 1...10)
        num -= rand
    }
    
    func changeButton(){
        if(switcher == true){
            increase()
        } else{
            decrease()
        }
    }
    
    var body: some View {
        VStack {
            Text(String(num))
                .font(.title)
                .padding()
            
            Button(action:{
                changeButton()
                if(num > 50){
                    switcher = false
                } else if(num < 0){
                    switcher = true
                }
                
            }, label: {
                if(switcher == true){
                    Text("Increase")
                } else{
                    Text("Decrease")
                }
                
            })
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
