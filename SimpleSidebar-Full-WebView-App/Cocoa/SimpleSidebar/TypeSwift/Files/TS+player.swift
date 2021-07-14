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
    /// `player.ts:` functions and variables
    enum player {
        // MARK: Functions
        case title
        case pause(Void = ())
        case isPlaying(Void = ())
        case getTitle(Void = ())
        case getDuration(Void = ())
        case addAlbums([String])
        /// Raw JavaScript-generated code to `evaluate` in some WKWebView.
        var js: String {
            switch self {
            case .title: return JS.variable("title")
            case .pause: return JS.function("pause()")
            case .isPlaying: return JS.function("isPlaying()")
            case .getTitle: return JS.function("getTitle()")
            case .getDuration: return JS.function("getDuration()")
            case .addAlbums(let io): return JS.function("addAlbums(\(io))")
            }
        }
    }
}
