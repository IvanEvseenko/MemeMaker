//
//  ViewController.swift
//  MemeMaker
//
//  Created by mac on 11.08.2021.
//

import UIKit

class ViewController: UIViewController {
    

    @IBOutlet weak var topCaptionSegmentedControl: UISegmentedControl!
    @IBOutlet weak var bottomCaptionSegmentControl: UISegmentedControl!
    @IBOutlet weak var topCaptionLabel: UILabel!
    @IBOutlet weak var bottomCaptionLabel: UILabel!
    
    var topChoises = [CaptionOption]()
    var bottomChoises = [CaptionOption]()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        configurTopCegmentControl()
        configurBottomCegmentControl()

      
    }
    func configurTopCegmentControl() {
        topCaptionSegmentedControl.removeAllSegments()
        let segment1 = CaptionOption(emoji: "✌️", caption: "Victory!")
        let segment2 = CaptionOption(emoji: "✋", caption: "Paper")
        let segment3 = CaptionOption(emoji: "✌️", caption: "Scissors")

        topChoises = [segment1, segment2, segment3]

        for choice in topChoises {
            topCaptionSegmentedControl.insertSegment(withTitle: choice.emoji, at: topChoises.count, animated: false)
        }
        topCaptionSegmentedControl.selectedSegmentIndex = 0
    }
    
    
    func configurBottomCegmentControl() {
        bottomCaptionSegmentControl.removeAllSegments()
        let segment1 = CaptionOption(emoji: "🐶", caption: "Dog")
        let segment2 = CaptionOption(emoji: "🐱", caption: "Cat")
        let segment3 = CaptionOption(emoji: "☕️", caption: "Coffe")
        
         bottomChoises = [segment1, segment2, segment3]
        
        for choice in bottomChoises {
            bottomCaptionSegmentControl.insertSegment(withTitle: choice.emoji, at: bottomChoises.count, animated: false)
        }
        bottomCaptionSegmentControl.selectedSegmentIndex = 0
    }
   
    @IBAction func segmentControllers(_ sender: UISegmentedControl) {
       // insertTopCaption()
        universalInsertCaption(captionSegmentControl: topCaptionSegmentedControl, arrayOfChoises: topChoises, captionLabel: topCaptionLabel)
    }
    
    
    @IBAction func bottomSegmentController(_ sender: UISegmentedControl) {
        //insertBottomCaption()
        universalInsertCaption(captionSegmentControl: bottomCaptionSegmentControl, arrayOfChoises: bottomChoises, captionLabel: bottomCaptionLabel)
    }
    
//    func insertTopCaption() {
//       
//        let index = topCaptionSegmentedControl.selectedSegmentIndex
//        let topCaption = topChoises[index]
//        topCaptionLabel.text = topCaption.caption
//    }
//   
//    func insertBottomCaption() {
//
//        let index = bottomCaptionSegmentControl.selectedSegmentIndex
//        let bottomCaption = bottomChoises[index]
//        bottomCaptionLabel.text = bottomCaption.caption
//    }
    
    func universalInsertCaption (captionSegmentControl: UISegmentedControl, arrayOfChoises: [CaptionOption], captionLabel: UILabel ) {
        
        let universalIndex = captionSegmentControl.selectedSegmentIndex
        let universalCaption = arrayOfChoises[universalIndex]
        captionLabel.text = universalCaption.caption
        
    }
}

