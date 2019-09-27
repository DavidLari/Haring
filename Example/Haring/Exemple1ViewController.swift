//
//  ViewController.swift
//  Haring
//
//  Created by Ivan Bruel on 07/18/2016.
//  Copyright (c) 2016 Ivan Bruel. All rights reserved.
//

import UIKit
import Haring

class Exemple1ViewController: UIViewController {
  
  @IBOutlet fileprivate weak var textView: UITextView! {
    didSet {
      textView.delegate = self
    }
  }
  fileprivate let markdownParser = MarkdownParser(font: UIFont.systemFont(ofSize: 16))
  
  override func viewDidLoad() {
    super.viewDidLoad()
    markdownParser.addCustomElement(MarkdownSubreddit())
      textView.attributedText = markdownParser.parse(NSLocalizedString("Markdown", comment: "").stringByDecodingHTMLEntities)
    // Do any additional setup after loading the view, typically from a nib.
  }
  
  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
  }
  
}

extension Exemple1ViewController: UITextViewDelegate {
  
  func textView(_ textView: UITextView, shouldInteractWith URL: URL,
                in characterRange: NSRange) -> Bool {
    UIApplication.shared.open(URL)
    return true
  }
  
}
