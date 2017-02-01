//
//  ViewController.swift
//  SWIFT_Controlles
//
//  Created by Srinivas Byka on 1/30/17.
//  Copyright © 2017 Byka. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var label: UILabel!

    @IBOutlet weak var button: UIButton!
   
    @IBOutlet weak var segmentController: UISegmentedControl!
    
    @IBOutlet weak var segmentLabel: UILabel!

    @IBAction func buttonAction(_ sender: Any) {
        
        self.myAlert(message: "Out let button Clicked")
        // create the alert
       
    }
    

    @IBAction func segmentButtonAction(_ sender: Any) {
        
        
        
        switch (sender as AnyObject).selectedSegmentIndex {
        case 0:
            self.view.backgroundColor = UIColor.green
            
        case 1:
            self.view.backgroundColor = UIColor.yellow
            
        default:
            self.view.backgroundColor = UIColor.red
        }

        
    }
    
    
    
    
    
        
    
    func myAlert(message: String ){
        let alert = UIAlertController(title: "My Title", message: message, preferredStyle: UIAlertControllerStyle.alert)
        
        // add an action (button)
        alert.addAction(UIAlertAction(title: "OK", style: UIAlertActionStyle.default, handler: nil))
        
        // show the alert
        self.present(alert, animated: true, completion: nil)
    }

    

    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        //Horizontal Line
        let h_line = UILabel(frame: CGRect(x: (self.view.frame.size.width/2), y: 0, width:1, height: self.view.frame.size.height))
        h_line.backgroundColor = UIColor.black
        h_line.text = ""
        self.view.addSubview(h_line)
        
        
        //Outlet Label
        
        label.text = "Sample text"
        label.font = UIFont.preferredFont(forTextStyle: UIFontTextStyle(rawValue: "Gargia"))
        label.textColor = UIColor.red
        label.textAlignment = .center
        
        
        //Custom Label
        let myLabel = UILabel( frame: CGRect( x: (self.view.frame.size.width/2), y:(self.label.frame.origin.y), width:100, height:50))
        
        myLabel.text = "My Label"
        myLabel.textAlignment = .center
        myLabel.font = UIFont(name: "HelveticaNeue", size: CGFloat(20))
        self.view.addSubview(myLabel)

        //----------------------------------//

        
        //Custom Button
        
        let cButton = UIButton()
        cButton.frame = (frame: CGRect(x: self.button.frame.origin.x + 200, y: self.button.frame.origin.y, width: 100, height: 50))
        cButton.backgroundColor = UIColor.red
        cButton.setTitle("Name your Button ", for: .normal)
        cButton.addTarget(self, action: #selector(buttonAction1), for: .touchUpInside)
        self.view.addSubview(cButton)
        

        
        
        let roundButton = UIButton()
        roundButton.frame = (frame: CGRect(x: cButton.frame.origin.x , y: cButton.frame.origin.y+100, width:100, height:100))
        
        roundButton.backgroundColor = UIColor.red
        roundButton.setTitle("ROUND BUTTON ", for: .normal)
        roundButton.addTarget(self, action: #selector(buttonAction1), for: .touchUpInside)
        
        roundButton.layer.cornerRadius = 50
        
        
        roundButton.layer.borderWidth = 1
        roundButton.layer.borderColor = UIColor(red:1 , green:165/255 , blue:0 , alpha:1).cgColor
        
        roundButton.layer.borderWidth = 0.0

        self.view.addSubview(roundButton)
        
        
        
        //--------Segment controller creation-------------//
        
        // Initialize
        let items = ["Purple", "Green", "Blue"]
        let customSC = UISegmentedControl(items: items)
        customSC.selectedSegmentIndex = 0
        
        // Set up Frame and SegmentedControl
        customSC.frame = (frame: CGRect(x: 120, y: 200, width: 120, height: 50))
            
        
        // Style the Segmented Control
        customSC.layer.cornerRadius = 5.0  // Don't let background bleed
        customSC.backgroundColor = UIColor.black
        customSC.tintColor = UIColor.white
        
        // Add target action method
        //customSC.addTarget(self, action: changeColor:(), for: .valueChanged)
        
        //buttonAction1
        //changeColor:
        // Add this custom Segmented Control to our view
        self.view.addSubview(customSC)
        
        
        
        
        let its = ["I", "You", "We"]
        
        let cSegment = UISegmentedControl(items: its)
        cSegment.frame = (frame: CGRect(x: 120, y: 300, width: 120, height:50))
        self.view.addSubview(cSegment)
        
    
   
        
    }
//---------------View DidLoad End---------------//



func changeColor (sender: UISegmentedControl) {
    
    
    switch sender.selectedSegmentIndex {
    case 0:
        self.view.backgroundColor = UIColor.red
    case 1:
        self.view.backgroundColor = UIColor.orange
    default:
        self.view.backgroundColor = UIColor.brown
    }
}

    func roundButton (sender: UIButton){
        print("Round Button Action")
    }
    
    func buttonAction1(sender: UIButton!) {
        print("Button tapped")
    }

    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

