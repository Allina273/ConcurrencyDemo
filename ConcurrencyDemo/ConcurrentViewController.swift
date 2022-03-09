//
//  ConcurrentViewController.swift
//  ConcurrencyDemo
//
//  Created by Raj Kumari Soren on 08/03/22.
//

import Foundation
import UIKit

class ConcurrentViewController: UIViewController{
    
    @IBOutlet weak var queueLabel: UILabel!
    @IBOutlet weak var ConcurrentLabel: UILabel!
    @IBOutlet weak var isLabel: UILabel!
    @IBOutlet weak var thisLabel: UILabel!
    @IBOutlet weak var start: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        queueLabel.isHidden = true
        ConcurrentLabel.isHidden = true
        isLabel.isHidden = true
        thisLabel.isHidden = true
        
    }
    
    @IBAction func didClickOnStart(sender: AnyObject){
                
        let DISqueue = DispatchQueue.global(qos: .default)
        
        DISqueue.async { [self] in
            sleep(1)
            print("BACKGROUND-1")
            DispatchQueue.main.async {
                print("MAIN THREAD-1")
                
                thisLabel.isHidden = false
                    let label1 = "THIS"
                    self.thisLabel.text = label1
                view.backgroundColor = .cyan
                
            }
            
        }
        
        DISqueue.async {
            sleep(0)
            print("BACKGROUND-2")
            DispatchQueue.main.async { [self] in
                print("MAIN THREAD-2")
                
                isLabel.isHidden = false
                let label2 = "IS"
                isLabel.text = label2
                view.backgroundColor = .red
                
                
            }
        }
        
        DISqueue.async {
            sleep(3)
            print("BACKGROUND-3")
            DispatchQueue.main.async { [self] in
                
                print("MAIN THREAD-3")
        ConcurrentLabel.isHidden = false
        let label3 = "CONCURRENT"
                ConcurrentLabel.text = label3
                view.backgroundColor = .green
            }
        }
        
        DISqueue.async {
            sleep(2)
            print("BACKGROUND-4")
            DispatchQueue.main.async { [self] in
                print("MAIN THREAD-4")
                queueLabel.isHidden = false
                let label4 = "QUEUE"
                queueLabel.text = label4
                view.backgroundColor = .yellow
            }
        }
        
    }
    
}
   
