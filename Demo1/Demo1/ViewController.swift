//
//  ViewController.swift
//  Demo1
//
//  Created by Student on 30/08/23.
//  Copyright © 2023 Student. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        view.endEditing(true)
    }
    
    
    @IBAction func btnAlert(_ sender: Any) {
        var alrt = UIAlertController(title: "Warning!", message: "The data will be deleted...", preferredStyle: UIAlertController.Style.actionSheet)
        
        alrt.addAction( UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil))
        alrt.addAction(UIAlertAction(title: "Cancel", style: UIAlertAction.Style.cancel, handler: nil))
        
        present(alrt, animated: true, completion: nil)
    }
    
    
    
    
    
    
    
    
    

    @IBOutlet weak var btn: UIButton!
    @IBOutlet weak var switchLbl: UILabel!
    @IBOutlet weak var switchBtn: UISwitch!
    @IBAction func switchAction(_ sender: Any) {
        if switchBtn.isOn == true {
            view.backgroundColor = UIColor.black
            switchLbl.text = "ON"
            switchLbl.textColor = UIColor.white
            //btn.isEnabled = true
            btn.isHidden = true
        }
        else {
            view.backgroundColor = UIColor.white
            switchLbl.text = "OFF"
            switchLbl.textColor = UIColor.black
             //btn.isEnabled = false
            btn.isHidden = false
        }
    }
    
    
    
    
    
    
    
    @IBOutlet weak var segLbl: UILabel!
    
    @IBOutlet weak var segBtn: UISegmentedControl!
    @IBAction func segAction(_ sender: Any) {
        switch segBtn.selectedSegmentIndex {
            case 0:
                segLbl.text = "100"
            case 1:
                segLbl.text = "200"
                img.image = UIImage(named: "image1")
            default:
                segLbl.text = "300"
                img.image = UIImage(named: "image2")
        }
    }
    
    
    
    @IBOutlet weak var img: UIImageView!
    
    
    @IBOutlet weak var sliderBtn: UISlider!
    @IBOutlet weak var sliderLbl: UILabel!
    
    @IBAction func sliderAction(_ sender: Any) {
        sliderLbl.text = String(  Int(sliderBtn.value) )
    }
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
}

