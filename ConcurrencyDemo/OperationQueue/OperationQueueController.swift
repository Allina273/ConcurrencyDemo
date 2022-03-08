//
//  OperationQueueController.swift
//  ConcurrencyDemo
//
//  Created by DianApps on 08/03/22.
//

import Foundation
import UIKit

class OperationQueueController:UIViewController{
   
    let queue = OperationQueue()
    
    @IBOutlet weak var label1: UILabel!
    
    @IBOutlet weak var label2: UILabel!
    
    @IBOutlet weak var label3: UILabel!
    @IBOutlet weak var label4: UILabel!
    @IBAction func Start(_ sender: Any) {
        queue.addOperation {
            print("1")
            OperationQueue.main.addOperation {
                self.label1.text = "First"
            }
        }
        queue.addOperation {
            print("2")
            OperationQueue.main.addOperation {
                self.label2.text = "Second"
            }
        }
        queue.addOperation {
            print("3")
            OperationQueue.main.addOperation {
                self.label3.text = "Third"
            }
        }
        queue.addOperation {
            print("4")
            OperationQueue.main.addOperation {
                self.label4.text = "Four"
            }
        }
        
    }
}
