//
//  SidebarMenu.swift
//  SimpleSidebar
//
//  Created by Justin Bush on 2021-03-04.
//

import Cocoa

// MARK: Sidebar Menu Items
enum SidebarMenu: String, CaseIterable {
    
    // MARK: Item Title
    case discover = "Discover"
    case arcade = "Arcade"
    case create = "Create"
    case work = "Work"
    case play = "Play"
    case develop = "Develop"
    case categories = "Categories"
    case updates = "Updates"
    
    // MARK: Item Image
    var icon: NSImage {
        switch self {
        case .discover: return NSImage(named: "Discover-Blue")!
        case .arcade:  return NSImage(named: "Arcade-Blue")!
        case .create: return NSImage(named: "Create-Blue")!
        case .work: return NSImage(named: "Work-Blue")!
        case .play: return NSImage(named: "Play-Blue")!
        case .develop: return NSImage(named: "Develop-Blue")!
        case .categories: return NSImage(named: "Categories-Blue")!
        case .updates: return NSImage(named: "Updates-Blue")!
        }
    }
    // Black & white icon variants
    var iconBW: NSImage {
        switch self {
        case .discover: return NSImage(named: "Discover")!
        case .arcade:  return NSImage(named: "Arcade")!
        case .create: return NSImage(named: "Create")!
        case .work: return NSImage(named: "Work")!
        case .play: return NSImage(named: "Play")!
        case .develop: return NSImage(named: "Develop")!
        case .categories: return NSImage(named: "Categories")!
        case .updates: return NSImage(named: "Updates")!
        }
    }
}
