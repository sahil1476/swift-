//
//  ViewController.swift
//  classwork
//
//  Created by Student on 11/09/23.
//  Copyright © 2023 Student. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    
    
    @IBAction func btn(_ sender: UIButton) {
        
        let okHandler = {
            (action : UIAlertAction)-> Void in
            
            self.view.backgroundColor = UIColor.red
        }
        
        let alert = UIAlertController(title: "WARNING!!!", message: "DONT CLICK HERE", preferredStyle: .alert)
        
        alert.addAction(UIAlertAction(title: "ok", style: .default, handler: okHandler))
        alert.addAction(UIAlertAction(title: "option", style: .default, handler: nil))
        alert.addAction(UIAlertAction(title: "cancel", style: .cancel, handler: nil))
        self.present(alert,animated: true,completion: nil)
    }
    
    @IBOutlet weak var slidervalue: UISlider!
    
    @IBOutlet weak var textval: UITextField!
    @IBAction func slider(_ sender: UISlider) {
        //change colour slider of screen
        self.view.alpha = CGFloat(slidervalue.value)
        //change text value wrt slider value
        textval.font = UIFont.systemFont(ofSize: CGFloat(slidervalue.value))
    }
    
    //change background colour...
    @IBOutlet weak var sego: UISegmentedControl!
    
    @IBAction func segmentA(_ sender: UISegmentedControl) {
        var c = sego.selectedSegmentIndex
        var s = sego.titleForSegment(at: c)
        
        switch c {
        case 0:
            view.backgroundColor = UIColor(named: s!)//here s is string
        case 1:
            view.backgroundColor = UIColor(named: s!)
        case 2:
            view.backgroundColor = UIColor(named: s!)
        case 3:
            view.backgroundColor = UIColor(named: s!)
        default:
            print("default")
        }
        
        
    }
}

