//
//  Exemple2ViewController.swift
//  Haring_Example
//
//  Created by Kevin Cador on 04/12/2017.
//  Copyright © 2017 CocoaPods. All rights reserved.
//

import Foundation

import Haring

class Exemple2ViewController: UIViewController {
    
    @IBOutlet fileprivate weak var textView: UITextView!
    fileprivate let markdownParser = MarkdownParser()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let markdown = """
            *italic* or _italics_
            **bold** or __bold__

            # Header 1
            ## Header 2
            ### Header 3
            #### Header 4
            ##### Header 5
            ###### Header 6

            > Quote

            * List
            - List
            + List

            `code` or ```code```
            [Links](http://github.com/davidlari/Haring/)
        """
        textView.attributedText = markdownParser.parse(markdown)
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
}
