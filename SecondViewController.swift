//
//  SecondViewController.swift
//  EbookTest
//
//  Created by Connor on 10/11/18.
//  Copyright © 2018 Connor. All rights reserved.
//
// Added to git on 10/14/18

import UIKit
import AVFoundation

class SecondViewController: UIViewController, AVAudioPlayerDelegate {
    
    var audioPlayer : AVAudioPlayer!
    let soundArray = ["note1", "note2", "note3", "note4", "note5", "note6", "note7"]
    var selectedSoundFileName = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    
    @IBOutlet weak var button: UIButton!
    @IBAction func Apple1(_ sender: UIButton) {
        selectedSoundFileName = soundArray[sender.tag]
        UIView.animate(withDuration: 1,
                       animations: {
                        self.button.transform = CGAffineTransform(scaleX: 0.6, y: 0.6)
        },
                       completion: { _ in
                        UIView.animate(withDuration: 0.6) {
                            self.button.transform = CGAffineTransform.identity
                        }
        })
        if UIImage(named:"Apple") != nil{
            sender.setImage(UIImage(named:"EatenApple.png"), for: .normal)
        }
        print(selectedSoundFileName)
      
        playSound()
        
    }
  
    @IBOutlet weak var button2: UIButton!
    @IBAction func Apple2(_ sender: UIButton) {
        selectedSoundFileName = soundArray[sender.tag]
        UIView.animate(withDuration: 1,
                       animations: {
                        self.button2.transform = CGAffineTransform(scaleX: 0.6, y: 0.6)
        },
                       completion: { _ in
                        UIView.animate(withDuration: 0.6) {
                            self.button2.transform = CGAffineTransform.identity
                        }
        })
        if UIImage(named:"Apple") != nil{
            sender.setImage(UIImage(named:"EatenApple.png"), for: .normal)
        }
        print(selectedSoundFileName)
        
        playSound()
    }
    
    @IBOutlet weak var button3: UIButton!
    @IBAction func Apple3(_ sender: UIButton) {
        selectedSoundFileName = soundArray[sender.tag]
        UIView.animate(withDuration: 1,
                       animations: {
                        self.button3.transform = CGAffineTransform(scaleX: 0.6, y: 0.6)
        },
                       completion: { _ in
                        UIView.animate(withDuration: 0.6) {
                            self.button3.transform = CGAffineTransform.identity
                        }
        })
        if UIImage(named:"Apple") != nil{
            sender.setImage(UIImage(named:"EatenApple.png"), for: .normal)
        }
        print(selectedSoundFileName)
        
        playSound()
    }
    
    
    
    func playSound() {
        
        let soundURL = Bundle.main.url(forResource: selectedSoundFileName, withExtension: "wav")
        
        audioPlayer = try! AVAudioPlayer(contentsOf: soundURL!)
        audioPlayer.prepareToPlay() 
        audioPlayer.play()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
