//
//  ViewController.swift
//  BMI App
//
//  Created by Habibur Rahman on 7/30/21.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var resultLabel: UILabel!
    @IBOutlet weak var weightLabel: UILabel!
    @IBOutlet weak var heightLabel: UILabel!
    
    @IBOutlet weak var weightUiSlider: UISlider!
    
    @IBOutlet weak var heightUiSlider: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        resultLabel.text = ""
        
    }
    
    
    @IBAction func weightSlider(_ sender: UISlider) {
        
        let weight = String(format: "%.2f", sender.value) + " Kg"
        weightLabel.text = weight
    }
    
    @IBAction func heightSlider(_ sender: UISlider) {
        
        let height = String(format: "%.2f", sender.value) + " Cm"
        heightLabel.text = height
    }
    
    
    @IBAction func calculateButton(_ sender: UIButton) {
        
        let weightUiSliderValue = Float(weightUiSlider.value)
        let heightUiSliderValue = Float(heightUiSlider.value)
        let heigh = (heightUiSliderValue * heightUiSliderValue) / 10000
       
        let result = Float(weightUiSliderValue / heigh)
        
        if weightUiSliderValue == 0 && heightUiSliderValue == 0 {
            
            
        } else {
            
            resultLabel.text = String(format: "%.2f", result)
        }
        
        
        weightUiSlider.value = 0
        heightUiSlider.value = 0
        weightLabel.text = "Kg"
        heightLabel.text = "Cm"
        
    }
    
}

