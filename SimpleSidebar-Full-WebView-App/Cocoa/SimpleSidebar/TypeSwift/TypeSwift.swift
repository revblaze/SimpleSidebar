//
//  TypeSwift.swift
//  TypeSwift/WKTypeScript
//
//  index.ts
//  Generated with WKTypeScript v0.0.1
//
//  THIS FILE WAS AUTOMATICALLY GENERATED AND SHOULD NOT BE TOUCHED.
//

import Foundation

// typealias TS = TypeScript
/// **Core WKTypeScript Controller:** All things TypeScript go thorugh this structure.
struct TypeSwift {
    
    /// TypeScript-generated functions and variable code
    enum function {
        
        
        // MARK:- Example Code
        // Variables
        case anchorDelay
        case actionDelay
        // Functions
        case toggle(Void = ())
        case setLabel(_ text: String)
        case hideObject(_ hidden: Bool = false)
        case addNumbers(_ a: Double, _ b: Double)
        case selectDevice(_ device: Device)
        /// Raw JavaScript-generated code to `evaluate` in some WKWebView.
        var js: String {
            switch self {
            case .anchorDelay: return JS.variable("anchorDelay")
            case .actionDelay: return JS.variable("actionDelay")
            case .toggle: return JS.function("toggle()")
            case .setLabel(let text): return JS.function("setLabel(\"\(text)\")")
            case .hideObject(let hidden): return JS.function("hideObject(\(hidden))")
            case .addNumbers(let a, let b): return JS.function("addNumbers(\(a), \(b))")
            case .selectDevice(let device): return JS.function("selectDevice(\(device.js))")
            }
        }
        
        // MARK:- enums
        enum Device: String {
            case phone = "iOS"
            case pad = "iPadOS"
            case mac = "macOS"
            
            var js: String {
                switch self {
                case .phone: return "Device.Phone"
                case .pad: return "Device.Pad"
                case .mac: return "Device.Mac"
                }
            }
        }
    }
    
}
