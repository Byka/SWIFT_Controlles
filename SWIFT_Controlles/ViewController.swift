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
   
    
    @IBAction func buttonAction(_ sender: Any) {
        
        self.myAlert(message: "Out let button Clicked")
        // create the alert
       
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
        
        
        var cButton = UIButton()
        cButton.frame = (frame: CGRect(x: 100, y: 200, width: 100, height:100))
        cButton.backgroundColor = UIColor.red
        cButton.setTitle("Custom Button", for: UIControlState.normal)
        cButton.addTarget(self, action: #selector(buttonAction), forControlEvents: .touchUpInside)
        cButton.tag = 1;
        
        self.view.addSubview(cButton)
      
       

        
        

        
        func buttonAction(sender: UIButton!) {
            var btnsendtag: UIButton = sender
            if btnsendtag.tag == 1 {
                //do anything here
            }
        }
        
        
       
        
        

        
/*
         @selector(buttonClicked:) 
         
         myButton *bt = [myButton buttonWithType:UIButtonTypeCustom];
         [bt setFrame:CGRectMake(0,0, 100, 100)];
         [bt setExclusiveTouch:NO];
         [bt setUserData:**(insert user data here)**];
         
         [bt addTarget:self action:@selector(touchUpHandler:) forControlEvents:UIControlEventTouchUpInside];
         
         [view addSubview:bt];
        
         */
        
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

/*
 let label = UILabel(frame: CGRect(x: 0, y: 0, width: 200, height: 21))
 label.center = CGPoint(x: 160, y: 285)
 label.textAlignment = .center
 label.text = "I'am a test label"
 self.view.addSubview(label)
 
 
 open var font: UIFont! // default is nil (system font 17 plain)
 
 open var textColor: UIColor! // default is nil (text draws black)
 
 open var shadowColor: UIColor? // default is nil (no shadow)
 
 open var shadowOffset: CGSize // default is CGSizeMake(0, -1) -- a top shadow
 
 open var textAlignment: NSTextAlignment // default is NSTextAlignmentNatural (before iOS 9, the default was NSTextAlignmentLeft)
 
 open var lineBreakMode: NSLineBreakMode // default is NSLineBreakByTruncatingTail. used for single and multiple lines of text
 
 
 // the underlying attributed string drawn by the label, if set, the label ignores the properties above.
 @available(iOS 6.0, *)
 @NSCopying open var attributedText: NSAttributedString? // default is nil
 
 
 // the 'highlight' property is used by subclasses for such things as pressed states. it's useful to make it part of the base class as a user property
 
 open var highlightedTextColor: UIColor? // default is nil
 
 open var isHighlighted: Bool // default is NO
 
 
 open var isUserInteractionEnabled: Bool // default is NO
 
 open var isEnabled: Bool // default is YES. changes how the label is drawn
 
 
 // this determines the number of lines to draw and what to do when sizeToFit is called. default value is 1 (single line). A value of 0 means no limit
 // if the height of the text reaches the # of lines or the height of the view is less than the # of lines allowed, the text will be
 // truncated using the line break mode.
 
 open var numberOfLines: Int
 
 
 // these next 3 property allow the label to be autosized to fit a certain width by scaling the font size(s) by a scaling factor >= the minimum scaling factor
 // and to specify how the text baseline moves when it needs to shrink the font.
 
 open var adjustsFontSizeToFitWidth: Bool // default is NO
 
 open var baselineAdjustment: UIBaselineAdjustment // default is UIBaselineAdjustmentAlignBaselines
 
 @available(iOS 6.0, *)
 open var minimumScaleFactor: CGFloat // default is 0.0
 
 
 // Tightens inter-character spacing in attempt to fit lines wider than the available space if the line break mode is one of the truncation modes before starting to truncate.
 // The maximum amount of tightening performed is determined by the system based on contexts such as font, line width, etc.
 @available(iOS 9.0, *)
 open var allowsDefaultTighteningForTruncation: Bool // default is NO
 
 
 // override points. can adjust rect before calling super.
 // label has default content mode of UIViewContentModeRedraw
 
 open func textRect(forBounds bounds: CGRect, limitedToNumberOfLines numberOfLines: Int) -> CGRect
 
 open func drawText(in rect: CGRect)
 
 
 // Support for constraint-based layout (auto layout)
 // If nonzero, this is used when determining -intrinsicContentSize for multiline labels
 @available(iOS 6.0, *)
 open var preferredMaxLayoutWidth: CGFloat
 
 */
