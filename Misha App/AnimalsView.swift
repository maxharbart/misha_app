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
   init() {
        UIPageControl.appearance().currentPageIndicatorTintColor = .red
        UIPageControl.appearance().pageIndicatorTintColor = UIColor.systemPink.withAlphaComponent(0.2)
    }
    
    var body: some View {
        
        ScrollView {
            LazyHStack {
                OneAnimalView()
                
                }
            Button(action: {
                
            }) {
                Text("Проверь себя")
            }
            }
    }
}


//  function to play sound


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


// one image with animal that plays sound on tap
struct OneAnimalView: View {
    
//    var image = ""
//    var name = ""
//    var text = ""
    
    var body: some View {
        
        TabView {
            ForEach(animals, id: \.self) {animal in
                VStack {
                    Button(action: {
                    // play sound
                    playSound(sound: animal.name)
                }) {
                    
                    Image(animal.image)
                        .resizable()
                        .scaledToFit()
                        .cornerRadius(40)
                        .padding(10)
                        .frame(
                            width: UIScreen.main.bounds.width,
                            height: 400)
                }
                    Text(animal.text)
                        .font(.largeTitle)
                        .foregroundColor(.green)
                    
                        
                
                }.clipShape(RoundedRectangle(cornerRadius: 10.0, style: .continuous))
                
        }
            .padding(.all, 10)
        }
        .frame(width: UIScreen.main.bounds.width, height: 600)
        .tabViewStyle(PageTabViewStyle())
    }
}


struct AnimalsView_Previews : PreviewProvider {
    static var previews: some View {
        AnimalsView()
    }
}
