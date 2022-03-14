//
//  Downloader.swift
//  ConcurrencyDemo
//
//  Created by DianApps on 08/03/22.
//

import Foundation
import UIKit
class Downloader{
class func downloadImageWithURL(_ url:String) -> UIImage! {
    
    let data = NSData(contentsOf: NSURL(string: url)! as URL)
    return UIImage(data: data! as Data)
}
}
    let imageURLs = ["http://www.planetware.com/photos-large/F/france-paris-eiffel-tower.jpg",
                     "http://adriatic-lines.com/wp-content/uploads/2015/04/canal-of-Venice.jpg",
                     "https://s1.ax1x.com/2017/12/06/oaiz8.png",
                     "https://s1.ax1x.com/2017/12/06/oakQS.jpg"]
