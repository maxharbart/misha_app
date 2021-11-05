//
//  ContentView.swift
//  Misha App
//
//  Created by Максим Гарбарт on 03.11.2021.
//

import SwiftUI
import AVFoundation

var player: AVAudioPlayer!

struct AnimalsView: View {
    
    var body: some View {
        ScrollView {
            VStack {
                Button(action: {
                    // play sound
                    self.playSound(sound: "cow")
                }) {
                    
                    Image("cow")
                        .resizable()
                        .scaledToFit()
                        .cornerRadius(40)
                        .padding(10)
                }
                Text("Корова")
                Button(action: {
                    // play sound
                    self.playSound(sound: "horse")
                }) {
                    
                    Image("horse")
                        .resizable()
                        .scaledToFit()
                        .cornerRadius(40)
                        .padding(10)
                }
                Text("Лошадь")
                Button(action: {
                    // play sound
                    self.playSound(sound: "cat")
                }) {
                    
                    Image("cat")
                        .resizable()
                        .scaledToFit()
                        .cornerRadius(40)
                        .padding(10)
                }
                Text("Кот")
            }
        }
    }
    
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
}

struct AnimalsView_Previews : PreviewProvider {
    static var previews: some View {
       AnimalsView()
    }
}
