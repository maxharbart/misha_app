//
//  Misha_AppApp.swift
//  Misha App
//
//  Created by Максим Гарбарт on 03.11.2021.
//

import SwiftUI
import UIKit



@main
struct Misha_AppApp: App {
    var body: some Scene {
        
        WindowGroup {
            ContentView()
        }
        
    }

}



struct Animal: Decodable, Identifiable, Hashable {
    let id: Int
    let name: String
    let image: String
    let text: String
}

var animals = [
    Animal(id: 1, name: "cow", image: "cow", text: "Корова"),
    Animal(id: 2, name: "horse", image: "horse", text: "Лошадь"),
    Animal(id: 3, name: "cat", image: "cat", text: "Кот")
]

