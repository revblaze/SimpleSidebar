//
//  ViewController.swift
//  SimpleSidebar
//
//  Created by Justin Bush on 2021-03-03.
//

import Cocoa

class ViewController: NSViewController {

    @IBOutlet var sidebarConstraint: NSLayoutConstraint!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    var sidebarIsHidden = false
    @IBAction func toggleSidebar(_ sender: NSButton) {
        NSAnimationContext.runAnimationGroup({ context in
            context.duration = 0.5
            context.allowsImplicitAnimation = true
            if sidebarIsHidden {
                self.sidebarConstraint.constant = 0
                sidebarIsHidden = false
            } else {
                self.sidebarConstraint.constant = -190
                sidebarIsHidden = true
            }
            self.view.layoutSubtreeIfNeeded()
        }, completionHandler: nil)
    }

    override var representedObject: Any? {
        didSet {
        // Update the view, if already loaded.
        }
    }


}

