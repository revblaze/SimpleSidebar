//
//  WK+Generated.swift
//  Inter-Ops/WKTypeScript
//
//  Extensions for WebKit
//  Generated with WKTypeScript v0.0.1
//
//  THIS FILE WAS AUTOMATICALLY GENERATED AND SHOULD NOT BE TOUCHED.
//

import Foundation
import WebKit

// Reference:
// https://gist.github.com/ahmedk92/f279a49fa2a8d7b3b887f433e42cb612
extension WKWebView {
    //
    // MARK:- Generated Calls
    //
    // MARK:- global.ts
    /// Call a function or variable from `global.ts` to be evaluated in some WKWebView object.
    /// - parameters:
    ///     - global: The Swift-generated function or variable from `global.ts`
    /// # Usage
    ///     webView.ts(global: .variable)
    ///     webView.ts(global: .function())
    func ts(global: TypeScript.global) { js(global.js) }
    // MARK:- index.ts
    /// Call a function or variable from `index.ts` to be evaluated in some WKWebView object.
    /// - parameters:
    ///     - index: The Swift-generated function or variable from `index.ts`
    /// # Usage
    ///     webView.ts(index: .variable)
    ///     webView.ts(index: .function())
    func ts(index: TypeScript.index) { js(index.js) }
    // MARK:- mode.ts
    /// Call a function or variable from `mode.ts` to be evaluated in some WKWebView object.
    /// - parameters:
    ///     - mode: The Swift-generated function or variable from `mode.ts`
    /// # Usage
    ///     webView.ts(mode: .variable)
    ///     webView.ts(mode: .function())
    func ts(mode: TypeScript.mode) { js(mode.js) }
    /// Call a function or variable from `player.ts` to be evaluated in some WKWebView object.
    /// - parameters:
    ///     - player: The Swift-generated function or variable from `player.ts`
    /// # Usage
    ///     webView.ts(player: .variable)
    ///     webView.ts(player: .function())
    func ts(player: TypeScript.player) { js(player.js) }
    //
    // MARK:- Generated Callbacks
    //
    // MARK:- global.ts
    /// Call a function or variable from `global.ts` to be evaluated in some WKWebView object.
    /// - parameters:
    ///     - global: The Swift-generated function or variable from `global.ts`
    ///     - completionHandler: Awaits a return value from the function call
    /// # Usage
    ///     webView.ts(global: .variable)
    ///     webView.ts(global: .function())
    ///     // Callbacks
    ///     webView.ts(global: .function()) { (result: Result<String, Error>) in
    ///         switch result {
    ///         case .failure(let error): print(error)
    ///         case .success(let value): print(value)
    ///         }
    ///     }
    func callback<T>(global: TypeScript.global, completionHandler: ((Result<T, Error>) -> Void)? = nil) {
        evaluateCallback(global.js, completionHandler: completionHandler)
    }
    // MARK:- index.ts
    /// Call a function or variable from `index.ts` to be evaluated in some WKWebView object.
    /// - parameters:
    ///     - index: The Swift-generated function or variable from `index.ts`
    ///     - completionHandler: Awaits a return value from the function call
    /// # Usage
    ///     webView.ts(index: .variable)
    ///     webView.ts(index: .function())
    ///     // Callbacks
    ///     webView.ts(index: .function()) { (result: Result<String, Error>) in
    ///         switch result {
    ///         case .failure(let error): print(error)
    ///         case .success(let value): print(value)
    ///         }
    ///     }
    func callback<T>(index: TypeScript.index, completionHandler: ((Result<T, Error>) -> Void)? = nil) {
        evaluateCallback(index.js, completionHandler: completionHandler)
    }
    // MARK:- mode.ts
    /// Call a function or variable from `mode.ts` to be evaluated in some WKWebView object.
    /// - parameters:
    ///     - mode: The Swift-generated function or variable from `mode.ts`
    ///     - completionHandler: Awaits a return value from the function call
    /// # Usage
    ///     webView.ts(mode: .variable)
    ///     webView.ts(mode: .function())
    ///     // Callbacks
    ///     webView.ts(mode: .function()) { (result: Result<String, Error>) in
    ///         switch result {
    ///         case .failure(let error): print(error)
    ///         case .success(let value): print(value)
    ///         }
    ///     }
    func callback<T>(mode: TypeScript.mode, completionHandler: ((Result<T, Error>) -> Void)? = nil) {
        evaluateCallback(mode.js, completionHandler: completionHandler)
    }
    // MARK:- player.ts
    /// Call a function or variable from `player.ts` to be evaluated in some WKWebView object.
    /// - parameters:
    ///     - player: The Swift-generated function or variable from `player.ts`
    ///     - completionHandler: Awaits a return value from the function call
    /// # Usage
    ///     webView.ts(player: .variable)
    ///     webView.ts(player: .function())
    ///     // Callbacks
    ///     webView.ts(player: .function()) { (result: Result<String, Error>) in
    ///         switch result {
    ///         case .failure(let error): print(error)
    ///         case .success(let value): print(value)
    ///         }
    ///     }
    func callback<T>(player: TypeScript.player, completionHandler: ((Result<T, Error>) -> Void)? = nil) {
        evaluateCallback(player.js, completionHandler: completionHandler)
    }
    
    
    

    
    // MARK:- Deprecated (ignore for now)
    /*
    // MARK: Generated by File
    // Syntax: webView.ts(index: .myFunc())
    //         webView.index(.myFunc())
    // Safety: webView.indexTS(.myFunc())
    // NOTE: For syntax safety, we could go with the latter
    
    // MARK:- global.ts
    /// Call a function or variable from `global.ts` to be evaluated in some WKWebView object.
    /// - parameters:
    ///     - function: The Swift-generated function or variable from `global.ts`
    /// # Usage
    ///     webView.global(.variable)
    ///     webView.global(.function())
    func global(_ function: TypeScript.global) { js(function.js) }
    /// Call a function or variable from `global.ts` to be evaluated in some WKWebView object.
    /// - parameters:
    ///     - global: The Swift-generated function or variable from `global.ts`
    /// # Usage
    ///     webView.ts(global: .variable)
    ///     webView.ts(global: .function())
    func ts(global: TypeScript.global) { js(global.js) }
    // MARK:- index.ts
    /// Call a function or variable from `index.ts` to be evaluated in some WKWebView object.
    /// - parameters:
    ///     - function: The Swift-generated function or variable  from `index.ts`
    /// # Usage
    ///     webView.index(.variable)
    ///     webView.index(.function())
    func index(_ function: TypeScript.index) { js(function.js); print(function.js) }
    /// Call a function or variable from `index.ts` to be evaluated in some WKWebView object.
    /// - parameters:
    ///     - index: The Swift-generated function or variable from `index.ts`
    /// # Usage
    ///     webView.ts(index: .variable)
    ///     webView.ts(index: .function())
    func ts(index: TypeScript.index) { js(index.js) }
    // MARK:- mode.ts
    /// Call a function or variable from `mode.ts` to be evaluated in some WKWebView object.
    /// - parameters:
    ///     - function: The Swift-generated function or variable  from `mode.ts`
    /// # Usage
    ///     webView.mode(.variable)
    ///     webView.mode(.function())
    func mode(_ function: TypeScript.mode) { js(function.js) }
    /// Call a function or variable from `mode.ts` to be evaluated in some WKWebView object.
    /// - parameters:
    ///     - mode: The Swift-generated function or variable from `mode.ts`
    /// # Usage
    ///     webView.ts(mode: .variable)
    ///     webView.ts(mode: .function())
    func ts(mode: TypeScript.mode) { js(mode.js) }
     */
    
    // MARK: Callback with String Default
    /*
    func ts(global: TypeScript.global, completionHandler: ((Result<String, Error>) -> Void)? = nil) {
        evaluateCallback(global.js, completionHandler: completionHandler)
    }
    func ts(index: TypeScript.index, completionHandler: ((Result<String, Error>) -> Void)? = nil) {
        evaluateCallback(index.js, completionHandler: completionHandler)
    }
    func ts(mode: TypeScript.mode, completionHandler: ((Result<String, Error>) -> Void)? = nil) {
        evaluateCallback(mode.js, completionHandler: completionHandler)
    }
    func ts(player: TypeScript.player, completionHandler: ((Result<String, Error>) -> Void)? = nil) {
        evaluateCallback(player.js, completionHandler: completionHandler)
    }
    */
}

