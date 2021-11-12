//
//  File.swift
//  Misha App
//
//  Created by Максим Гарбарт on 12.11.2021.
//

import Foundation
import SwiftUI
import UIKit
import AVFoundation


var animal = animals.randomElement()
var animal2 = animals.randomElement()

struct AnimalsQuizView: View {
    var body: some View {
        
        VStack {
            Text("Звуки животных")
            Spacer()
            Button(action: {
                // play sound
                playSound(sound: animal!.name)
            }) {
            Text("play")
                .font(.largeTitle)
                .foregroundColor(.green) }
            Spacer()
            HStack{
                Button(action: {
                // do something
                
            }) {
                
                Image(animal!.image)
                    .resizable()
                    .scaledToFit()
                    .cornerRadius(40)
                    .padding()
                    .frame(
//                        width: UIScreen.main.bounds.width,
                        height: 200)
            }
                Button(action: {
                // do something
                
            }) {
                
                Image(animal2!.image)
                    .resizable()
                    .scaledToFit()
                    .cornerRadius(40)
                    .padding()
                    .frame(
//                        width: UIScreen.main.bounds.width,
                        height: 200)
            }
            }
            
            
            
        }
    }
}



