//
//  TS+Global.swift
//  Inter-Ops/WKTypeScript
//
//  global.ts
//  Generated with WKTypeScript v0.0.1
//
//  THIS FILE WAS AUTOMATICALLY GENERATED AND SHOULD NOT BE TOUCHED.
//

import Foundation

extension TypeScript {
    /// `global.ts:` functions and variables
    enum global {
        // MARK: Functions
        case postMessage(_ msg: String)
        /// Raw JavaScript-generated code to `evaluate` in some WKWebView.
        var js: String {
            switch self {
            case .postMessage(let io): return JS.function("postMessage(\"\(io)\")")
            }
        }
    }
}
