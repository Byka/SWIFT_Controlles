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
    
    @IBOutlet weak var sliderLabel: UILabel!

    
    @IBOutlet weak var textField: UITextField!
    
    
    @IBOutlet weak var slider: UISlider!
    
    @IBOutlet weak var mySwitch: UISwitch!
    
    
    @IBOutlet weak var activityIndicator: UIActivityIndicatorView!
    
    

    @IBOutlet weak var progressBar: UIProgressView!
    
    @IBOutlet weak var progressLAbel: UILabel!
    
    
    
    
    @IBAction func mySwitchAction(_ sender: UISwitch) {
        

        if (sender.isOn) {
            print("switch ON")
            self.activityIndicator.startAnimating()
        }else{
            print("switch OFF")
            self.activityIndicator.stopAnimating()

        }
        
    }
    

    

    // MARK: -slider action
    
    @IBAction func sliderAction(_ sender: UISlider) {
        
        
        var sliderval = Int(sender.value)
        
        print("Slider Value: %@", sliderval)
        sliderLabel.text = "\(sliderval) val"
        
    }
   
    /*
    var currentValue = Int(sender.value)
    println("Slider changing to \(currentValue) ?")
    sliderVal.text = "\(currentValue) Km"
    */
    
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
    
    
    @IBAction func goToTableView(_ sender: Any) {
        
        
        let tableVC = TableViewController()
        
        self.navigationController?.pushViewController(tableVC, animated: true)
        
        /*
        let storyBoard: UIStoryboard = UIStoryboard (name: "Main", bundle:nil)
        
        let tableVC = storyBoard.instantiateInitialViewController("TableViewController") as TableViewController
        
        
        self.navigationController?.pushViewController(tableVC, animated: YES)
        */
    }
    
    
    /*
    let newViewController = NewViewController()
    self.navigationController?.pushViewController(newViewController, animated: true)
    
    If you want to navigate to Controller on StoryBoard with Identifier "newViewController", then do this:
    
    let storyBoard: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
    let newViewController = storyBoard.instantiateViewController(withIdentifier: "newViewController") as! NewViewController
    self.present(newViewController, animated: true, completion: nil)
    */
    
    
    
    @IBAction func showPopup(_ sender: Any) {
        
        
    }
    
    
        
    // MARK: -Common alert method
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
        let myLabel = UILabel( frame: CGRect( x: h_line.frame.origin.x+20  , y:(self.label.frame.origin.y), width:100, height:50))
        
        myLabel.backgroundColor = UIColor.white
        myLabel.text = "My Label"
        myLabel.textAlignment = .center
        myLabel.font = UIFont(name: "HelveticaNeue", size: CGFloat(20))
        self.view.addSubview(myLabel)

        //----------------------------------//

        
        //Custom Button
        
        let cButton = UIButton()
        cButton.frame = (frame: CGRect(x: h_line.frame.origin.x+20, y: self.button.frame.origin.y, width: 100, height: 50))
        cButton.backgroundColor = UIColor.red
        cButton.setTitle("Service Calling ", for: .normal)
        cButton.addTarget(self, action: #selector(buttonAction1), for: .touchUpInside)
        self.view.addSubview(cButton)
        

        
        
        let roundButton = UIButton()
        roundButton.frame = (frame: CGRect(x: h_line.frame.origin.x+120 , y: self.button.frame.origin.y, width:50, height:50))
        
        roundButton.backgroundColor = UIColor.red
        roundButton.setTitle("O", for: .normal)
        roundButton.addTarget(self, action: #selector(buttonAction1), for: .touchUpInside)
        
        roundButton.layer.cornerRadius = 25
        
        
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
        customSC.frame = (frame: CGRect(x: h_line.frame.origin.x+20, y: self.segmentController.frame.origin.y, width: 120, height: 30))
            
        
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
        

        
        
        //TextFied 
        self.textField.placeholder = "Enter you Name"
        
        // MARK: -Custom Text Field
        let cTextFied = UITextField()
        
        cTextFied.frame = (frame: CGRect(x: h_line.frame.origin.x+20, y: self.textField.frame.origin.y, width: 150, height:50))
        
        cTextFied.isSecureTextEntry = true
        cTextFied.backgroundColor = UIColor.yellow
        self.view.addSubview(cTextFied)
   
        
        //MARK: -Custom slider
        
        let cSlider = UISlider()
        cSlider.frame = (frame: CGRect(x:h_line.frame.origin.x+20, y: self.slider.frame.origin.y, width: 120, height:20))
        
        cSlider.backgroundColor = UIColor.red
        cSlider.maximumValue = 1000
        cSlider.minimumValue = 500
        cSlider.value = 500
        
        cSlider.addTarget(self, action: "sliderAction:", for: UIControlEvents.touchDown)
        
        self.view.addSubview(cSlider)
        

        
        
        // MARK: - Switch Controller
    self.activityIndicator.stopAnimating()
        

        self.progressBar.setProgress(0, animated: true)
        
       
        
    }
//---------------View DidLoad End---------------//


    
    func sliderAction(sender: UISlider){
        
        print("Custom Slider Dragged")
        
        
    }
    

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

    
    
    var counter:Int = 0 {
        didSet {
            let fractionalProgress = Float(counter) / 100.0
            let animated = counter != 0
            
            progressBar.setProgress(fractionalProgress, animated: animated)
            progressLAbel.text = ("\(counter)%")
        }
    }
    
    
    func roundButton (sender: UIButton){
        print("Round Button Action")
        
        
    }
    
    
    
    
    // MARK:- Web service calling
    func buttonAction1(sender: UIButton!) {
        print("Button tapped")
   
        
        let todoEndpoint: String = "https://jsonplaceholder.typicode.com/todos/1"
        
        guard let url = URL(string: todoEndpoint) else {
            print("Error: cannot create URL")
            return
        }
        let urlRequest = URLRequest(url: url)
        
        print("SAMPLE /", urlRequest)
 
        
        
    
    }
    

    
    /*
 
     let parseData = parseJSON(getJSON("https://httpbin.org/ip"))
     let ipvalue = parseData.valueForKey("origin")
     self.performSelectorOnMainThread(#selector(ViewController.updateIPlbl(_:)), withObject: ipvalue, waitUntilDone: false)
     }
     
     func getJSON(urlToRequest:String) -> NSData
     {
     return NSData(contentsOfURL: NSURL(string: urlToRequest)!)!
     }
     
     func parseJSON(inputData:NSData) -> NSDictionary{
     let dictData = (try! NSJSONSerialization.JSONObjectWithData(inputData, options: .MutableContainers)) as! NSDictionary
     return dictData
     }
     
     func updateIPlbl(text: String) {
     self.ipLabel.text = "Your IP is " + text
     }
 
 
    
 */
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

