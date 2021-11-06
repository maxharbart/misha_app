//
//  ContentView.swift
//  Misha App
//
//  Created by Максим Гарбарт on 03.11.2021.
//

import SwiftUI
import UIKit
import AVFoundation

var player: AVAudioPlayer!

struct AnimalsView: View {
    
    var body: some View {
        
        ScrollView(.horizontal, showsIndicators: false) {
            HStack {
                
                ForEach(animals, id: \.self) {animal in
                    
                    OneAnimalView(image: animal.image, name: animal.name, text: animal.text)
                }
                
            }
            
        }
    }
}
//  function to play sound on image tap
func playSound(sound: String) {
    let url = Bundle.main.url(forResource: sound, withExtension: "wav")
    guard url != nil else {
        return
    }
    do {
        player = try AVAudioPlayer(contentsOf: url!)
        player?.play()
    } catch {
        print("\(error)")
    }
}

struct OneAnimalView: View {
    
    var image = ""
    var name = ""
    var text = ""
    
    var body: some View {
        VStack {
            
            
            Button(action: {
                // play sound
                playSound(sound: name)
            }) {
                
                Image(image)
                    .resizable()
                    .scaledToFit()
                    .cornerRadius(40)
                    .padding(10)
                    .frame(
                        maxWidth: 400,
                        maxHeight: 400)
            }
            Text(text)
            
        }
    }
    
}

struct AnimalsView_Previews : PreviewProvider {
    static var previews: some View {
        AnimalsView()
    }
}
