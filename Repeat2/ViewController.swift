//
//  ViewController.swift
//  Repeat2
//
//  Created by Людмила Солопенко on 15.04.2021.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var mainLabel: UILabel!
    @IBOutlet var segmentedControll: UISegmentedControl!
    @IBOutlet var slider: UISlider!
    @IBOutlet var textField: UITextField!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //Label
        mainLabel.font = mainLabel.font.withSize(35)
        mainLabel.textAlignment = .center
        mainLabel.numberOfLines = 2
        
        //Segmented Controll
        segmentedControll.insertSegment(withTitle: "Third", at: 2, animated: false)
        
        //Slider
        slider.value = 1
        slider.minimumValue = 0
        slider.maximumValue = 1
        slider.minimumTrackTintColor = .yellow
        slider.maximumTrackTintColor = .red
        slider.thumbTintColor = .blue
        
        mainLabel.text = String(slider.value)
    }

    @IBAction func segmentedControllAction() {
        switch segmentedControll.selectedSegmentIndex {
        case 0:
            mainLabel.text = "The first segment is selected"
            mainLabel.textColor = .red
        case 1:
            mainLabel.text = "The second segment is selected"
            mainLabel.textColor = .blue
        case 2:
            mainLabel.text = "The third segment is selected"
            mainLabel.textColor = .yellow
        default: break
        }
    }
    
    @IBAction func sliderAction() {
        mainLabel.text = String(slider.value)
        let sliderValue = CGFloat(slider.value)
        
        view.backgroundColor = view.backgroundColor?.withAlphaComponent(sliderValue)
    }
 
    @IBAction func doneButtonPressed() {
    }
}

