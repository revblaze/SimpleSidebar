//
//  TSFunction.swift
//  Shared
//  Inter-Ops/WKTypeScript
//
//  Created by Justin Bush on 2021-02-05.
//

import Foundation

struct TSFunction {
    /// All functions pass through here, as a `String`, before being evaluated as JavaScript.
    static func builder(_ script: String) -> String {
        return script + ";"
    }
    
    // TODO
    // input: TSFunction.builder("variable") -> "variable.toString();"
    // input: TSFunction.builder("function()") -> "function();"
    // input: TSFunction.builder("name", params) -> "name(params);"
    
    // AND
    // func TSFunction.builder(_ name: String, parameters: Any) {}
    
    // FINALLY
    // Rename(?):
    // struct JavaScript = JS.builder() ?? JavaScript.builder()
    // class Builder = Builder(func, param) ?? JS.Builder(func, param)
    // OR struct with init ^
}
