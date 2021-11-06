//
//  Misha_AppApp.swift
//  Misha App
//
//  Created by Максим Гарбарт on 03.11.2021.
//

import SwiftUI

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
