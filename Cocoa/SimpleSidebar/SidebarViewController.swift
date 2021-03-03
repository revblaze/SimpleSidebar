//
//  SidebarViewController.swift
//  SimpleSidebar
//
//  Created by Justin Bush on 2021-03-03.
//

import Cocoa

class SidebarViewController: NSViewController {

    @IBOutlet var welcomeButton: NSButton!
    @IBOutlet var homeButton: NSButton!
    @IBOutlet var websitesButton: NSButton!
    @IBOutlet var domainsButton: NSButton!
    @IBOutlet var templatesButton: NSButton!
    @IBOutlet var myAccountButton: NSButton!
    @IBOutlet var notificationsButton: NSButton!
    @IBOutlet var settingsButton: NSButton!
    @IBOutlet var logoutButton: NSButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Set default selected menu item
        onclickMenuItem(.welcome)
    }
    
    /// Reset all sidebar items to their non-selected state.
    func resetAll() {
        welcomeButton.image = NSImage(named: .menuWelcome)
        homeButton.image = NSImage(named: .menuHome)
        websitesButton.image = NSImage(named: .menuWebsites)
        domainsButton.image = NSImage(named: .menuDomains)
        templatesButton.image = NSImage(named: .menuTemplates)
        myAccountButton.image = NSImage(named: .menuMyAccount)
        notificationsButton.image = NSImage(named: .menuNotifications)
        settingsButton.image = NSImage(named: .menuSettings)
        logoutButton.image = NSImage(named: .menuLogout)
    }
    
    // MARK: Item On-Click
    /// Called when a sidebar item is clicked. Sets the item to a selected state.
    func onclickMenuItem(_ item: SidebarMenu) {
        switch item {
        case .welcome: welcomeButton.image = NSImage(named: .menuWelcomeSelected)
        case .home: homeButton.image = NSImage(named: .menuHomeSelected)
        case .websites: websitesButton.image = NSImage(named: .menuWebsitesSelected)
        case .domains: domainsButton.image = NSImage(named: .menuDomainsSelected)
        case .templates: templatesButton.image = NSImage(named: .menuTemplatesSelected)
        case .myAccount: myAccountButton.image = NSImage(named: .menuMyAccountSelected)
        case .notifications: notificationsButton.image = NSImage(named: .menuNotificationsSelected)
        case .settings: settingsButton.image = NSImage(named: .menuSettingsSelected)
        case .logout: print("Logout")
        }
    }
    
    // MARK: Sidebar Actions
    @IBAction func setWelcomeMenu(_ sender: NSButton) { resetAll(); onclickMenuItem(.welcome) }
    @IBAction func setHomeMenu(_ sender: NSButton) { resetAll(); onclickMenuItem(.home) }
    @IBAction func setWebsitesMenu(_ sender: NSButton) { resetAll(); onclickMenuItem(.websites) }
    @IBAction func setDomainsMenu(_ sender: NSButton) { resetAll(); onclickMenuItem(.domains) }
    @IBAction func setTemplatesMenu(_ sender: NSButton) { resetAll(); onclickMenuItem(.templates) }
    @IBAction func setMyAccountMenu(_ sender: NSButton) { resetAll(); onclickMenuItem(.myAccount) }
    @IBAction func setNotificationsMenu(_ sender: NSButton) { resetAll(); onclickMenuItem(.notifications) }
    @IBAction func setSettingsMenu(_ sender: NSButton) { resetAll(); onclickMenuItem(.settings) }
    @IBAction func setLogoutMenu(_ sender: NSButton) { resetAll(); onclickMenuItem(.logout) }
    
}


// MARK:- Sidebar Menu
enum SidebarMenu {
    case welcome
    case home
    case websites
    case domains
    case templates
    case myAccount
    case notifications
    case settings
    case logout
}



// MARK:- Images
extension NSImage.Name {
    static let menuWelcome = NSImage.Name("Welcome")
    static let menuHome = NSImage.Name("Home")
    static let menuWebsites = NSImage.Name("Websites")
    static let menuDomains = NSImage.Name("Domains")
    static let menuTemplates = NSImage.Name("Templates")
    static let menuMyAccount = NSImage.Name("MyAccount")
    static let menuNotifications = NSImage.Name("Notifications")
    static let menuSettings = NSImage.Name("Settings")
    static let menuLogout = NSImage.Name("Logout")
    static let menuWelcomeSelected = NSImage.Name("Welcome-Selected")
    static let menuHomeSelected = NSImage.Name("Home-Selected")
    static let menuWebsitesSelected = NSImage.Name("Websites-Selected")
    static let menuDomainsSelected = NSImage.Name("Domains-Selected")
    static let menuTemplatesSelected = NSImage.Name("Templates-Selected")
    static let menuMyAccountSelected = NSImage.Name("MyAccount-Selected")
    static let menuNotificationsSelected = NSImage.Name("Notifications-Selected")
    static let menuSettingsSelected = NSImage.Name("Settings-Selected")
    static let menuLogoutSelected = NSImage.Name("Logout-Selected")
}
