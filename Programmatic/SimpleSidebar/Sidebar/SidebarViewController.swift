//
//  SidebarViewController.swift
//  SimpleSidebar
//
//  Created by Justin Bush on 2021-03-04.
//

import Cocoa

class SidebarViewController: NSViewController {

    @IBOutlet var sidebar: NSOutlineView!
    var rowBackgroundColor = NSColor(red: 0.00, green: 0.48, blue: 1.00, alpha: 1.00)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Setup notification for window losing and gaining focus
        NotificationCenter.default.addObserver(self, selector: #selector(windowLostFocus), name: NSApplication.willResignActiveNotification, object: nil)
        NotificationCenter.default.addObserver(self, selector: #selector(windowGainedFocus), name: NSApplication.willBecomeActiveNotification, object: nil)
        // Set row background color for macOS 10.13+
        if #available(OSX 10.13, *) {
            rowBackgroundColor = NSColor(named: "SelectedBackground")!
        }
    }
}


extension SidebarViewController: NSOutlineViewDataSource {
    // Number of items in the sidebar
    func outlineView(_ outlineView: NSOutlineView, numberOfChildrenOfItem item: Any?) -> Int {
        return SidebarMenu.allCases.count
    }
    // Items to be added to sidebar
    func outlineView(_ outlineView: NSOutlineView, child index: Int, ofItem item: Any?) -> Any {
        return SidebarMenu.allCases[index]
    }
    // Whether rows are expandable by an arrow
    func outlineView(_ outlineView: NSOutlineView, isItemExpandable item: Any) -> Bool {
        return false
    }
    // Height of each row
    func outlineView(_ outlineView: NSOutlineView, heightOfRowByItem item: Any) -> CGFloat {
        return 40.0
    }
        @objc func windowLostFocus(_ notification: Notification) {
          setRowColour(sidebar, false)
        }
    
        @objc func windowGainedFocus(_ notification: Notification) {
          setRowColour(sidebar, true)
        }
    
    // When a row is selected
    func outlineViewSelectionDidChange(_ notification: Notification) {
        if let outlineView = notification.object as? NSOutlineView {
            setRowColour(outlineView, true)
        }
    }
    
    func setRowColour(_ outlineView: NSOutlineView, _ windowFocused: Bool) {
        let rows = IndexSet(integersIn: 0..<outlineView.numberOfRows)
        let rowViews = rows.compactMap { outlineView.rowView(atRow: $0, makeIfNecessary: false) }
        var initialLoad = true
        // Iterate over each row in the outlineView
        for rowView in rowViews {
            if rowView.isSelected { initialLoad = false }
            if windowFocused && rowView.isSelected {
                rowView.backgroundColor = rowBackgroundColor
            } else if rowView.isSelected {
                rowView.backgroundColor = rowBackgroundColor
            } else {
                rowView.backgroundColor = .clear
            }
        }
        if initialLoad { self.setInitialRowColour() }
    }
    // Set row color on init
    func setInitialRowColour() {
        sidebar.rowView(atRow: 0, makeIfNecessary: true)?.backgroundColor = rowBackgroundColor
    }
    // Remove default selection colour
    func outlineView(_ outlineView: NSOutlineView, didAdd rowView: NSTableRowView, forRow row: Int) {
        rowView.selectionHighlightStyle = .none
    }
    
}


extension SidebarViewController: NSOutlineViewDelegate {
    // Populate outlineView
    func outlineView(_ outlineView: NSOutlineView, viewFor tableColumn: NSTableColumn?, item: Any) -> NSView? {
        var view: NSTableCellView?
        
        if let menuItem = item as? SidebarMenu {
            view = outlineView.makeView(withIdentifier: NSUserInterfaceItemIdentifier(rawValue: "ItemCell"), owner: self) as? NSTableCellView
            // Menu item title
            if let textField = view?.textField {
                textField.stringValue = menuItem.rawValue
            }
            // Menu item icon image
            if let imageView = view?.imageView {
                imageView.image =  menuItem.icon    // NSImage(named: menuItem.rawValue)
            }
        }
        
        return view
    }
    
}

