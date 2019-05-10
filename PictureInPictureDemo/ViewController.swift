//
//  ViewController.swift
//  PictureInPictureDemo
//
//  Created by LogicalWings Mac on 07/02/19.
//  Copyright © 2019 LogicalWings Mac. All rights reserved.
//

import UIKit
import AVKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    @IBAction func btnPlay(_ sender: UIButton) {
        
        self.performSegue(withIdentifier: "VctoAVC", sender: nil)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        let destination = segue.destination as! AVPlayerViewController
        let url = NSURL(string:
            "http://www.ebookfrenzy.com/ios_book/movie/movie.mov")
        
        if let movieURL = url {
            destination.player = AVPlayer(url: movieURL as URL)
        }
        
    }

}

