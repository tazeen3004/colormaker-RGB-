//
//  ViewController.swift
//  colormaker(RGB)
//
//  Created by Tazeen on 10/01/17.
//  Copyright © 2017 Tazeen. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var RedLabel: UILabel!
    
    @IBOutlet weak var GreenLabel: UILabel!
    @IBOutlet weak var BlueLabel: UILabel!
    @IBOutlet weak var RedSlider: UISlider!
    @IBOutlet weak var GreenSlider: UISlider!
    @IBOutlet weak var BlueSlider: UISlider!
    @IBOutlet weak var DisplayingLabel: UILabel!
    
    var RedColor :Float = 0
    var GreenColor :Float = 0
    var BlueColor :Float = 0
    
    @IBAction func RedSliderAction(_ sender: UISlider) {
        ChangeColor()
    }
    
    @IBAction func GreenSliderAction(_ sender: UISlider) {
        ChangeColor()    }
    
    @IBAction func BlueSliderAction(_ sender: UISlider) {
    ChangeColor()
    }
    
    
    
    func ChangeDislayLabelColor(){
        
        DisplayingLabel.backgroundColor = UIColor(red: CGFloat(RedColor), green: CGFloat(GreenColor), blue:CGFloat(BlueColor), alpha: 1.0)
        ChangeNumberlabel()
    }
    
    func ChangeColor(){
        RedColor = RedSlider.value
        GreenColor = GreenSlider.value
        BlueColor = BlueSlider.value
        ChangeDislayLabelColor()
    }
    
    func ChangeNumberlabel(){
        let RoundedRed = String(format: "%0.0f",(RedColor * 255))
        let RoundedGreen = String(format: "%0.0f",(GreenColor * 255))
        let RoundedBlue = String(format: "%0.0f",(BlueColor * 255))
    
        RedLabel.text = "Red: \(RoundedRed)"
        GreenLabel.text = "Green: \(RoundedGreen)"
        BlueLabel.text = "Blue: \(RoundedBlue)"
    }
    
    @IBOutlet weak var ResetButton: UIButton!
    
    @IBAction func ResetButtonAction(_ sender: UIButton) {
        RedSlider.value = 0.5
        GreenSlider.value = 0.5
        BlueSlider.value = 0.5
        
        RedLabel.text = "Red: 0"
        GreenLabel.text = "Green: 0"
        BlueLabel.text = "Blue: 0"
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

