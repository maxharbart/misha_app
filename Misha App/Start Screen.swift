//
//  Start Screen.swift
//  Misha App
//
//  Created by Максим Гарбарт on 05.11.2021.
//

import Foundation
import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            VStack {
                NavigationLink(destination: AnimalsView()) {
                    Text("ANIMALS 🐒")
                        .font(.system(size:30, weight: .light, design: .serif))
                        .frame(width: 300)
                        .padding(30)
                        .border(Color.pink, width: 2)
                        
                    
                        
                        
                        
                }
                NavigationLink(destination: AlphabetView()){
                    Text("ALPHABET 🆎")
                        .font(.system(size:30, weight: .light, design: .serif))
                        .frame(width: 300)
                        .padding(30)
                        .border(Color.pink, width: 2)
                        
                }
            }
        }
    }
}

struct ContentView_Previews : PreviewProvider {
    static var previews: some View {
       ContentView()
    }
}

