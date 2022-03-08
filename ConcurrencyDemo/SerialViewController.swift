//
//  SerailViewController.swift
//  ConcurrencyDemo
//
//  Created by Raj Kumari Soren on 08/03/22.
//


import UIKit

class SerialViewController: UIViewController{
    
    @IBOutlet weak var This: UILabel!
    
    @IBOutlet weak var startButton: UIButton!
    @IBOutlet weak var Serial: UILabel!
    @IBOutlet weak var Is: UILabel!
    @IBOutlet weak var Queue: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func didClickOnStart(sender: AnyObject) {
        let label1 = "hiii"
        This.text = label1
        let label2 = Is.text
        let label3 = Serial.text
        let label4 = Queue.text
    
    
    
}
}
