//
//  ContentView.swift
//  Misha App
//
//  Created by Максим Гарбарт on 03.11.2021.
//

import SwiftUI
import AVFoundation

var player: AVAudioPlayer!

struct ContentView: View {
    
    var body: some View {
 
        VStack {
            Button(action: {
                // play sound
                self.playSound()
            }) {
                
                Image("cow")
                    .resizable()
                    .scaledToFit()
            }
        }
    }
        
    
    func playSound() {
        let url = Bundle.main.url(forResource: "cow", withExtension: "wav")
        
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
