<img src="Design/Header.jpg" />

The SwiftUI sidebar implementation is courtesy of [1998code](https://github.com/1998code/SwiftUI2-MacSidebar). Go show them some love!

# SimpleSidebar
Provided in this project are three different implementations of the macOS sidebar:

<table><tr>
  <th>Variant</th>
  <th>Compatibility</th>
</tr>
<tr><td>
  
**Cocoa**

- **Variant #1:** Built for Programmers `(NSOutlineView)`
- **Variant #2:** Built for Designers `(Storyboards)`
        
</td><td>

OS X 10.11 and higher

</td></tr>
<tr><td>

**SwiftUI**

- **Joint Variance:** `SideBarListStyle()`

</td><td>

macOS 11.0 and higher

</td></tr></table>

<img src="Design/Variants.png" />

As much as I love SwiftUI, this project is more of a POC that Cocoa is still relevant. I wanted to show that the Cocoa implementation of something as simple as a sidebar didn't need to be extremely complex or time-consuming. Similarily, creating a highly-customizable sidebar shouldn't require heavily packaged frameworks.

# Variant 1 <sup>Cocoa</sup>

The variant that was built with the average programmer in-mind.

<img src="Design/GuidelineComparison.jpg" />

<table><tr>
  <th>Pros</th>
  <th>Cons</th>
</tr>
<tr><td>
  
```
• Fastest Cocoa implementation
• Easy to setup and configure menu items
• Resizable sidebar (NSSplitView)
• Adopts the style of the user's current
  version of macOS (tbt to aqua!)
• Only assets are icons (optional)
```
        
</td><td>

```
• Lacks section & row headers
• Not very customizable
• Menu items are inhereted
• All follow the same structure (ie. title & icon)
```

</td></tr></table>

### Summary
Great for implementing basic sidebars that don't need a ton of customization. Adopts the style of the user's version of macOS for complete immersion with backward-compatibility.

# Variant 2 <sup>Cocoa</sup>

The variant that was built for designers who love Storyboards.

<img src="Design/Mockup.jpg" />

<table><tr>
  <th>Pros</th>
  <th>Cons</th>
</tr>
<tr><td>
  
```
• Highly customizable interface
• Allows for individual menu item customization 
• Same appearance across all versions of macOS
• Mutable/customizable container view
• Easy to modify, manipulate and animate
  - ie. Toggle hide/show sidebar with fade effect
```
        
</td><td>

```
• Heavily relies on Storyboards
• Uses AutoLayout + Constraints
• Experience with design software – ie.
  Photoshop/XD – for the ultimate customization
  experience
```

</td></tr></table>

### Summary
Great for maximum customization. Maintains the same style and appearance, regardless of the user's macOS version (bring newer UI design standards to backwards compatible applications)!

<img src="Design/Demo.gif" />

----

I do intend on making a Swift package with zero external assets required – aside from the menu icons – and would love some help getting started!

Although SwiftUI has made it a breeze to implement, I've always found the process to be far more complex than it needs to be when working with Cocoa.

Since I'm constantly developing newer applications with SwiftUI – yet also maintaining older projects that require maximum OS compatibility – I thought it would be useful to have a resource that portrays both implementations.


