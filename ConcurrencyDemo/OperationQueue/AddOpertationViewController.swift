//
//  AddOpertationViewController.swift
//  ConcurrencyDemo
//
//  Created by DianApps on 08/03/22.
//

import Foundation
import UIKit
class AddOperation:UIViewController{
    let queue = OperationQueue()
    @IBOutlet weak var image1: UIImageView!
    @IBOutlet weak var image2: UIImageView!
    @IBOutlet weak var image3: UIImageView!
    @IBOutlet weak var image4: UIImageView!
    
    @IBAction func start(_ sender: Any) {
        let queue = OperationQueue()
        queue.addOperation {
            let img1 = Downloader.downloadImageWithURL(imageURLs[0])
            print("1")
        
        OperationQueue.main.addOperation {
            self.image1.image = img1
            print("image1")
        }
    }
        queue.addOperation {
            let img2 = Downloader.downloadImageWithURL(imageURLs[1])
            print("2")
            OperationQueue.main.addOperation {
                self.image2.image = img2
                print("image2")
            }
        }
        queue.addOperation {
            let img3 = Downloader.downloadImageWithURL(imageURLs[2])
            print("3")
            OperationQueue.main.addOperation {
                self.image3.image = img3
                print("image3")
            }
        }
        queue.addOperation {
            let img4 = Downloader.downloadImageWithURL(imageURLs[3])
            print("4")
            OperationQueue.main.addOperation {
                self.image4.image = img4
                print("image4")
            }
        }
    }
   
}
