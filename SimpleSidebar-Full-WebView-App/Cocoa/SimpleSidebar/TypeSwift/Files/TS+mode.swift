//
//  TS+Mode.swift
//  Inter-Ops/WKTypeScript
//
//  mode.ts
//  Generated with WKTypeScript v0.0.1
//
//  THIS FILE WAS AUTOMATICALLY GENERATED AND SHOULD NOT BE TOUCHED.
//

import Foundation

extension TypeScript {
    /// `mode.ts:` functions and variables
    enum mode {
        // MARK: Variables
        case currentMode
        // MARK: Functions
        case setMode(_ mode: Mode)
        /// Raw JavaScript-generated code to `evaluate` in some WKWebView.
        var js: String {
            switch self {
            case .currentMode: return JS.variable("currentMode")
            case .setMode(let io): return JS.function("setMode(\(io.js))")
            }
        }
        // MARK: enums and related types
        /// `enum Mode` declared in `mode.ts`
        enum Mode: String {
            case light = "light"
            case dark = "dark"
            
            var js: String {
                switch self {
                case .light: return "Mode.Light"
                case .dark: return "Mode.Dark"
                }
            }
        }
    }
}
