//
//  ContentView.swift
//  Misha App
//
//  Created by Максим Гарбарт on 03.11.2021.
//

import SwiftUI
import AVFoundation

var player: AVAudioPlayer!



var animals = [
    Animal(id: 1, name: "cow", image: "cow", text: "Корова"),
    Animal(id: 2, name: "horse", image: "horse", text: "Лошадь"),
    Animal(id: 3, name: "cat", image: "cat", text: "Кот")
]


struct AnimalsView: View {
    
    var body: some View {
        
        VStack {
            ForEach(animals, id: \.self) {animal in
                Button(action: {
                    // play sound
                    playSound(sound: animal.name)
                }) {
                    
                    Image(animal.image)
                        .resizable()
                        .scaledToFit()
                        .cornerRadius(40)
                        .padding(10)
                }
                Text(animal.text)
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
    

    struct AnimalsView_Previews : PreviewProvider {
        static var previews: some View {
            AnimalsView()
        }
    }
