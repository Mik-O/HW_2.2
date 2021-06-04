//
//  ViewController.swift
//  HW_2.2
//
//  Created by Mishanya on 05.06.2021.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var colorView: UIView!
    
    @IBOutlet var redLabel: UILabel!
    @IBOutlet var greenLabel: UILabel!
    @IBOutlet var blueLabel: UILabel!
    
    @IBOutlet var redSlider: UISlider!
    @IBOutlet var greenSlider: UISlider!
    @IBOutlet var blueSlider: UISlider!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        colorView.layer.cornerRadius = 15
        
        redSlider.minimumTrackTintColor = .red
        greenSlider.minimumTrackTintColor = .green
        
        setcolor()
        
        setcolor()
        setValue(for: redLabel, greenLabel, blueLabel)
        
    }

    @IBAction func rgbSlider(_ sender: UISlider) {
        setcolor()
        
        switch sender.tag {
        case 0: redLabel.text = string(from: sender)
        case 1: greenLabel.text = string(from: sender)
        case 2: blueLabel.text = string(from: sender)
        default: break
        }
        
    }
    
    private func setcolor() {
        colorView.backgroundColor = UIColor(red: CGFloat(redSlider.value),
                                        green: CGFloat(greenSlider.value),
                                        blue: CGFloat(blueSlider.value),
                                        alpha: 1)
    }

    private func setValue(for labels: UILabel...) {
        labels.forEach { label in
            switch label.tag {
            case 0: redLabel.text = string(from: redSlider)
            case 1: greenLabel.text = string(from: redSlider)
            case 2: blueLabel.text = string(from: redSlider)
            default: break
            }
        }
    }
    private func string(from slider: UISlider) -> String {
        String(format: "%.2f", slider.value)
    }
}



