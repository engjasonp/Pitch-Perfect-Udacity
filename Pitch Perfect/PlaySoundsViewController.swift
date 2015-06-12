//
//  PlaySoundsViewController.swift
//  Pitch Perfect
//
//  Created by Jason Eng on 6/7/15.
//  Copyright (c) 2015 EngJason. All rights reserved.
//

import UIKit
import AVFoundation


class PlaySoundsViewController: UIViewController {
    //var audioPlayer is of type AVAudioPlayer
    var audioPlayer: AVAudioPlayer!
    var receivedAudio: RecordedAudio!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
//        if var filePath = NSBundle.mainBundle().pathForResource("movie_quote", ofType: "mp3") {
//            var filePathURL = NSURL.fileURLWithPath(filePath)
//            
//        } else {
//            println("the file path is empty")
//        }
        var filePathURL = receivedAudio.filePathURL
        audioPlayer = AVAudioPlayer(contentsOfURL: filePathURL, error: nil)
        audioPlayer.enableRate = true
    }

    @IBAction func playSlowAudio(sender: UIButton) {
        audioPlayer.stop()
        audioPlayer.rate = 0.5
        audioPlayer.currentTime = 0.0
        audioPlayer.play()
    }

    @IBAction func playFastAudio(sender: UIButton) {
        audioPlayer.stop()
        audioPlayer.rate = 2.0
        audioPlayer.currentTime = 0.0
        audioPlayer.play()
    }
    
    @IBAction func stopButton(sender: UIButton) {
        audioPlayer.stop()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}
