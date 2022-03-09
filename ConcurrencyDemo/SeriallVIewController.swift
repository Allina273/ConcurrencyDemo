//
//  ConcurrentVIewController.swift
//  ConcurrencyDemo
//
//  Created by Raj Kumari Soren on 08/03/22.
//

import UIKit

class SeriallViewController: UIViewController{
    
    
    @IBOutlet weak var this: UILabel!
    
    @IBOutlet weak var start: UIButton!
    @IBOutlet weak var queue: UILabel!
    @IBOutlet weak var con: UILabel!
    @IBOutlet weak var `is`: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        this.isHidden = true
        `is`.isHidden = true
        con.isHidden = true
        queue.isHidden = true
        
    }

    @IBAction func didClickOnStart(sender: AnyObject){
    
    let DISqueue = DispatchQueue(label: "hiiiii")
        
        DISqueue.async { [self] in
            sleep(1)
            print("BACKGROUND-1")
            DispatchQueue.main.async {
                print("MAIN THREAD-1")
                
                this.isHidden = false
                    let label1 = "THIS"
                    this.text = label1
                this.textColor = .magenta
                
                view.backgroundColor = .cyan
                
            }
            
        }
        
        DISqueue.async {
            sleep(1)
            print("BACKGROUND-2")
            DispatchQueue.main.async { [self] in
                print("MAIN THREAD-2")
                
                `is`.isHidden = false
                let label2 = "IS"
                `is`.text = label2
                `is`.textColor = .purple
                view.backgroundColor = .red
                
                
            }
        }
        
        DISqueue.async {
            sleep(1)
            print("BACKGROUND-3")
            DispatchQueue.main.async { [self] in
                
                print("MAIN THREAD-3")
                con.isHidden = false
                let label3 = "SERIAl"
                con.text = label3
                con.textColor = .white
                view.backgroundColor = .green
            }
        }
        
        DISqueue.async {
            sleep(1)
            print("BACKGROUND-4")
            DispatchQueue.main.async { [self] in
                print("MAIN THREAD-4")
                queue.isHidden = false
                let label4 = "QUEUE"
                queue.text = label4
                queue.textColor = .orange
                view.backgroundColor = .yellow
            }
        }
        
    }
    
}
