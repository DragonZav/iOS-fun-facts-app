//
//  ViewController.swift
//  Fun Facts
//
//  Created by Chris Augg on 9/30/15.
//  Copyright © 2015 Auggie Doggie iOSware. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var funFactLabel: UILabel!
    @IBOutlet var funFactButton: UIView!
   
    let factBook = FactBook()
    let colorWheel = ColorWheel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        funFactLabel.text = factBook.randomFact()
       }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func showFunFact() {
        
        let randomColor = colorWheel.randomColor()
        funFactButton.tintColor = randomColor
        view.backgroundColor = randomColor
        funFactLabel.text = factBook.randomFact()
    }

}

