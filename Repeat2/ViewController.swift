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

    override func viewDidLoad() {
        super.viewDidLoad()
        //Label
        mainLabel.text = ""
        mainLabel.font = mainLabel.font.withSize(35)
        mainLabel.textAlignment = .center
        mainLabel.numberOfLines = 2
        
        //Segmented Controll
        segmentedControll.insertSegment(withTitle: "Third", at: 2, animated: false)
    }

    @IBAction func segmentedControllAction() {
        switch segmentedControll.selectedSegmentIndex {
        case 0:
            mainLabel.text = "The first segment is selected"
            mainLabel.textColor = .red
        case 1:
            mainLabel.text = "The second segment is selected"
            mainLabel.textColor = .black
        case 2:
            mainLabel.text = "The third segment is selected"
            mainLabel.textColor = .yellow
        default:
            <#code#>
        }
    }
    
}

