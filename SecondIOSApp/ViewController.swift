//
//  ViewController.swift
//  SecondIOSApp
//
//  Created by White, Nicholas on 9/26/16.
//  Copyright © 2016 CTEC. All rights reserved.
//

import UIKit

class ViewController: UIViewController
{

    @IBOutlet weak var firstButton: UIButton!
    
    @IBOutlet weak var textLabel: UILabel!
   
    @IBOutlet weak var background: UIView!
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning()
    {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func clickedButton(sender: UIButton)
    {
        textLabel.text = "you clicked me!"
        textLabel.textColor = makeRandomColor()
        background.backgroundColor = makeRandomColor()
    }
    
    private func makeRandomColor() -> UIColor
    {
        //Make 3 values between 0-1 percentage and create color from them.
        let randomColor : UIColor
        let red :CGFloat = CGFloat(drand48())
        let green :CGFloat = CGFloat(drand48())
        let blue :CGFloat = CGFloat(drand48())
        
        randomColor = UIColor(red: red, green: green, blue: blue, alpha: 255)
        
        return randomColor
    }

}

