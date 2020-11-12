//
//  suraViewController.swift
//  Namoz , Duolar , Suralar , Tahorat ...
//
//  Created by Elbek Shaykulov on 11/6/20.
//  Copyright © 2020 Elbek Shaykulov. All rights reserved.
//

import UIKit
import AVFoundation

class suraViewController: UIViewController {
     
    @IBOutlet weak var labelView: UILabel!
    @IBOutlet weak var labelView2: UILabel!
    @IBOutlet weak var view2: UIView!
    @IBOutlet weak var playPause: UIButton!
     
    @IBOutlet weak var replayButton: UIButton!
    @IBOutlet weak var ppButton: UIButton!
    @IBOutlet weak var cancelButton: UIButton!
    
    var number : Int?
    var audioPlayer: AVAudioPlayer!
 
    
    override func viewDidLoad() {
        super.viewDidLoad()
         
        labelView.text = K.suralar[number ?? 0]
        labelView2.text = K.suralar[(number ?? 1) + 1 ]
        view2.layer.borderWidth = 5
        view2.layer.borderColor = #colorLiteral(red: 0.9533298612, green: 0.8522637486, blue: 0.7835378051, alpha: 1)
        view2.layer.cornerRadius = 10
        
        replayButton.tintColor = .clear
        ppButton.tintColor = .clear
        cancelButton.tintColor = .clear
        
        let url = Bundle.main.url(forResource: "\(number ?? 1)", withExtension: "mp3")
        loadMusic (url!)
   
        navigationItem.rightBarButtonItem = UIBarButtonItem(barButtonSystemItem: .play, target: self, action: #selector(playMusic) )
    }
    
    func loadMusic(_ url:URL) {
        do{
        audioPlayer = try AVAudioPlayer(contentsOf: url)
        audioPlayer.prepareToPlay()
        }catch{
            print(error)
        }
    }
    
    
    @objc func  playMusic() {
        audioPlayer?.play()
        
        replayButton.tintColor = #colorLiteral(red: 0.3925033212, green: 0.3366774321, blue: 0.08116257936, alpha: 1)
        ppButton.tintColor = #colorLiteral(red: 0.3925033212, green: 0.3366774321, blue: 0.08116257936, alpha: 1)
        cancelButton.tintColor = #colorLiteral(red: 0.3925033212, green: 0.3366774321, blue: 0.08116257936, alpha: 1)
    }
    
    //MARK: - Buttons
    
        @IBAction func rePlay(_ sender: UIButton) {
            audioPlayer.currentTime = 0
        }
        
        @IBAction func playPausePressed(_ sender: UIButton) {
            if audioPlayer.isPlaying == true {
                audioPlayer.pause()
                sender.setImage(UIImage(systemName: "play.fill"), for: .normal)
            }else{
                audioPlayer.play()
                sender.setImage(UIImage(systemName: "pause.fill"), for: .normal)
            }
        }
        
        @IBAction func cencelPressed(_ sender: UIButton) {
            audioPlayer.currentTime = 0
            audioPlayer.pause()
            replayButton.tintColor = .clear
            ppButton.tintColor = .clear
            cancelButton.tintColor = .clear
        }
    
   
    
}
