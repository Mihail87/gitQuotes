//
//  ViewController.swift
//  Quotes
//
//  Created by Mihai Leonte on 11/26/17.
//  Copyright © 2017 Mihai Leonte. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var quoteLabel: UILabel!
    @IBOutlet weak var showQuote: UIButton!
    
    //some comment
    let quotesProvider = QuoteModel()
    let colorsProvider = BackgroundColorModel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        quoteLabel.text = quotesProvider.getRandomQuote()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func newQuote() {
        quoteLabel.text = quotesProvider.getRandomQuote()
        let randomColor = colorsProvider.getRandomColor()
        view.backgroundColor = randomColor
        showQuote.tintColor = randomColor
    }
}

