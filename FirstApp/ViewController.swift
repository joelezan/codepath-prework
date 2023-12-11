//
//  ViewController.swift
//  FirstApp
//
//  Created by Joel Ezan on 12/9/23.
//

import UIKit

class ViewController: UIViewController {

    // Store the initial font sizes for each label
    var initialFontSizes: [CGFloat] = []
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        // Store the initial font sizes when the view is loaded
        initialFontSizes = [label1.font.pointSize, label2.font.pointSize, label3.font.pointSize]
    }

    @IBAction func changeBackgroundColor(_ sender: UIButton) {
        let randomColor = changeColor()
        view.backgroundColor = randomColor
    }
    func changeColor() -> UIColor{
        let red = CGFloat.random(in: 0...1)
        let green = CGFloat.random(in: 0...1)
        let blue = CGFloat.random(in: 0...1)
        
        return UIColor(red: red, green: green, blue: blue, alpha: 0.5)
    }
    
    @IBOutlet weak var label1: UILabel!
    
    @IBOutlet weak var label2: UILabel!
    
    @IBOutlet weak var label3: UILabel!
    
    @IBAction func fontIncrementor(_ sender: UIStepper) {
        let value = Int(sender.value)

        // Increment or decrement the font size based on the initial size
        label1.font = label1.font.withSize(initialFontSizes[0] + CGFloat(value))
        label2.font = label2.font.withSize(initialFontSizes[1] + CGFloat(value))
        label3.font = label3.font.withSize(initialFontSizes[2] + CGFloat(value))

        // Reset the stepper value to avoid negative values if needed
        sender.value = Double(value)
    }






    
}

