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
                    Text("go to another animals")
                }
                NavigationLink(destination: AlphabetView()){
                    Text("go to alphabet")
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

