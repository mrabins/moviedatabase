//
//  ViewController.swift
//  Movie Database
//
//  Created by Mark Rabins on 4/12/16.
//  Copyright © 2016 self.edu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
   @IBOutlet weak var movieDatabase: UILabel!
   @IBOutlet weak var posterImageView: UIImageView!
   @IBOutlet weak var retrieveDataButton: UIButton!
   @IBOutlet weak var movieTitleLabel: UILabel!
   @IBOutlet weak var directorTitleLabel: UILabel!
   @IBOutlet weak var writerLabel: UILabel!
   @IBOutlet weak var studioLabel: UILabel!
   @IBOutlet weak var ratedLabel: UILabel!

    let dataRecord = (title: "Midnight Run", director: "Martin Brest", writer: "George Gallo", studio: "Universal Studios", rated: "R", year: "1988")

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        view.backgroundColor = UIColor(red: 0/255, green: 251/255, blue: 152/255, alpha: 1)
        
        movieDatabase.text = "Movie Database"
        movieDatabase.textAlignment = NSTextAlignment.Center
        movieDatabase.textColor = UIColor.whiteColor()
        movieDatabase.backgroundColor = UIColor(red: 107/255, green: 142/255, blue: 35/255, alpha: 1)
        
        posterImageView.image = UIImage(named: "midnightRun")
        
        retrieveDataButton.setTitle("Retrive Data", forState: UIControlState.Normal)
        retrieveDataButton.backgroundColor = UIColor(red: 107/255, green: 142/255, blue: 35/255, alpha: 1)
        retrieveDataButton.tintColor = UIColor.whiteColor()
        
//        movieTitleLabel.text = "Title"
//        directorTitleLabel.text = "Director"
//        directorTitleLabel.font = directorTitleLabel.font.fontWithSize(14)
        
        movieTitleLabel.text = ""
        directorTitleLabel.text = ""
        writerLabel.text = ""
        studioLabel.text = ""
        ratedLabel.text = ""
        posterImageView.hidden = true

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func retrieveDataButtonTapped (sender: UIButton) {
        
        posterImageView.hidden = false
        
        movieTitleLabel.text = "\(dataRecord.title), \(dataRecord.year)"
        directorTitleLabel.text = dataRecord.director
        writerLabel.text = dataRecord.writer
        studioLabel.text = dataRecord.studio
        ratedLabel.text = dataRecord.rated
        
        
    }
    

}

