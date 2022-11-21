//
//  ViewController.swift
//  Challenge2
//
//  Created by Usuario on 16/11/22.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {

    @IBOutlet weak var label1: UILabel!
    @IBOutlet weak var imageView: UIImageView!
    var player: AVAudioPlayer?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.imageView.image = UIImage(named: "dice_1")
        label1.text = "Throw dice"
    }

    @IBAction func throwButtonTapped(_ sender: Any) {
        guard let pathToSound = Bundle.main.path(forResource: "dice", ofType: "mp3") else {
            print("Error in path")
            return
        }
        
        let url = URL(filePath: pathToSound)
        
        do {
            player = try AVAudioPlayer(contentsOf: url)
            player?.play()
        } catch {
            print(error)
        }
        
        let randomNumber: Int = Int.random(in: 1...6)
        self.imageView.image = UIImage(named: "dice_\(randomNumber)")
        label1.text = "You got \(randomNumber)"
        
    }
}
     

