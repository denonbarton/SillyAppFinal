//
//  ViewController.swift
//  SillyAppFinal
//
//  Created by Barton, Denon on 12/15/15.
//  Copyright © 2015 Barton, Denon. All rights reserved.
//

import UIKit

class ViewController: UIViewController
{

    @IBAction func RedButton(sender: UIButton)
    
    {
        changeToRed()
    }
  
    @IBAction func GreenButton(sender: UIButton)
    {
        changeToGreen()
    }
    @IBAction func ColorSlider(sender: UISlider)
    
    {
        let newRed = CGFloat(Double(sender.value))
        
        view.backgroundColor = UIColor( red: newRed, green: CGFloat(0.234), blue: CGFloat(0.134), alpha: 1.0)
    }

    func changeToRed()
    {
    view.backgroundColor = UIColor.redColor()
    }
    func changeToGreen()
    {
    view.backgroundColor = UIColor.greenColor()
    }

    func changeColor()
    {
        let newRed = CGFloat(Double(arc4random_uniform(256)) / 255.000)
        let newGreen = CGFloat(Double(arc4random_uniform(256)) / 255.000)
        let newBlue = CGFloat(Double(arc4random_uniform(256)) /  255.000)
        
        view.backgroundColor = UIColor(red: newRed, green: newGreen, blue: newBlue, alpha: 1.0)
    }
    
    
    @IBAction func changeBackground(sender: UIButton)
    {
        changeColor()
    }
    
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


}

