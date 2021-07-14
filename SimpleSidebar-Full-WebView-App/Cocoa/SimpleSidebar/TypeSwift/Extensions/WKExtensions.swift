//
//  WKExtensions.swift
//  Demo
//
//  Created by Justin Bush on 2021-02-19.
//

import Foundation
import WebKit


extension WKWebView {
    
    // MARK:- Load File
    /// Load the generated JavaScript code, of the input TypeScript file, to be evaluated in some WKWebView object.
    /// - parameters:
    ///     - load: The Swift-generated name of the specified TypeScript file
    /// # Usage
    ///     webView.ts(load: .index)
    func ts(load: TypeScript.File) { evaluateTypeScript(file: load) }
    /// Load the generated JavaScript code, of the input TypeScript file, to be evaluated in some WKWebView object.
    /// - parameters:
    ///     - file: The Swift-generated name of the specified TypeScript file
    /// # Usage
    ///     webView.load(.index)
    func load(_ file: TypeScript.File) { evaluateTypeScript(file: file) }
    
    // MARK:- TypeScript Calls
    
    /// (**DEFAULT**) `String` : Call any function or variable, using the `TypeScript` controller format, to be evaluated in some WKWebView object.
    /// - parameters:
    ///     - script: The TypeScript code to run
    ///     - completionHandler: Awaits a return value `String` from the function call
    /// # Usage
    ///     webView.ts(.index(.variable))
    ///     webView.ts(.index(.function()))
    ///     // Callbacks (String)
    ///     webView.ts(.index(.function())) { (result) in
    ///         switch result {
    ///         case .failure(let error): print(error)
    ///         case .success(let value): print(value)
    ///         }
    ///     }
    /// # Callbacks (default)
    /// The default implementation, with an optional completion parameter (as seen in the Usage example above), will return the JavaScript `String` literal
    /// of the callback value.
    ///
    /// **Note:** Some functions, like those with a declared return value of a non-`String` type, may not return to the console.
    /// Consider declaring a return type instead: `(result: Result<Type, Error>) in`
    func ts(_ script: TypeScript.Body, completionHandler: ((Result<String, Error>) -> Void)? = nil) {
        evaluateCallback(script.js, completionHandler: completionHandler)
    }
    /// Call any function or variable, using the `TypeScript` controller format, to be evaluated in some WKWebView object.
    /// - parameters:
    ///     - script: The TypeScript code to run
    ///     - completionHandler: Awaits a return value from the function call
    /// # Usage
    ///     webView.ts(.index(.variable))
    ///     webView.ts(.index(.function()))
    ///     // Callbacks
    ///     webView.ts(.index(.function())) { (result: Result<Bool, Error>) in
    ///         switch result {
    ///         case .failure(let error): print(error)
    ///         case .success(let value): print(value)
    ///         }
    ///     }
    func ts<T>(_ script: TypeScript.Body, completionHandler: ((Result<T, Error>) -> Void)? = nil) {
        evaluateCallback(script.js, completionHandler: completionHandler)
    }
    
    // MARK:- Controller Functions
    
    /// Evalutes raw JavaScript code in a `WKWebView` object
    /// - parameters:
    ///     - script: The JavaScript code that you wish to execute
    /// # Usage
    ///     let code = "console.log(var);"
    ///     webView.js(code)
    func js(_ script: String) {
        evaluateJavaScript(script)
    }
    /// Evaluates the input TypeScript file as JavaScript code in some WKWebView object.
    func evaluateTypeScript(file: TypeScript.File) {
        evaluateJavaScript(getScriptString(file: file))
    }
    /// Returns the raw JavaScript generated-code, as a `String`, from the TypeScript `file`.
    /// - parameters:
    ///     - file: The name of the TypeScript file you wish to retrieve (file extension is optional)
    /// - returns: The contents of the JavaScript file as a `String`
    /// # Usage
    ///     let code = getScriptString(file: .index)
    ///     webView.js(code) // or
    ///     webView.evaluateTypeScript(code)
    func getScriptString(file: TypeScript.File) -> String {
        return getScriptString(file: file.rawValue, path: TSConfig.dir)
    }
    /// Returns the raw JavaScript generated-code, as a `String`, from the specified JavaScript `file`.
    /// - parameters:
    ///     - file: The name of the JavaScript file you wish to retrieve (file extension is optional)
    ///     - path: The path to the directory where the JavaScript file is located, relative to your project directory
    /// - returns: The contents of the JavaScript file as a `String`
    /// # Usage
    ///     let code = getScriptString(file: "index", path: "dist/")
    ///     webView.js(code) // or
    ///     webView.evaluateJavaScript(code)
    func getScriptString(file: String, path: String) -> String {
        let fileName = TSUtility.removeExtension(file)
        if let filePath = Bundle.main.path(forResource: "\(path)\(fileName)", ofType: "js") {
            do {
                let contents = try String(contentsOfFile: filePath)
                return contents
            } catch {
                print("Error: contents could not be loaded")
            }
        } else {
            print("Error: \(fileName).js not found")
        }
        return "Error"
    }
    
    // MARK:- Deprecated Functions
    /// Make calls to your TypeScript functions and variables to be evaluated in some WKWebView object.
    /// - parameters:
    ///     - function: The Swift-generated function or variable
    /// # Usage
    ///     webView.ts(.index(.variable))
    ///     webView.ts(.index(.function())
    //func ts(_ script: TypeScript.Body) { js(script.js) }
    /// Make calls to your TypeScript functions (or variables) to be evaluated in some WKWebView object.
    /// - parameters:
    ///     - function: The Swift-generated function or variable
    /// # Usage
    ///     webView.function(.index(.variable))
    ///     webView.function(.index(.function())
    //func function(_ script: TypeScript.Body) { js(script.js) }
}

// MARK:- TypeScript Callbacks
// Reference: https://gist.github.com/ahmedk92/f279a49fa2a8d7b3b887f433e42cb612
extension WKWebView {
    enum EvaluateJavaScriptError: String, Error {
        case typeMismatchError
    }
    
    func evaluateCallback(_ javaScriptString: String, completionHandler: ((Result<String, Error>) -> Void)? = nil) {
        evaluateJavaScript(javaScriptString) { (result, error) in
            guard let result = result else {
                completionHandler?(.failure(error!))
                return
            }
            
            completionHandler?(.success(String(format: "%@", result as! NSObject)))
        }
    }
    
    func evaluateCallback<T>(_ javaScriptString: String, completionHandler: ((Result<T, Error>) -> Void)? = nil) {
        evaluateJavaScript(javaScriptString) { (result, error) in
            guard let result = result else {
                completionHandler?(.failure(error!))
                return
            }
            
            if let result = result as? T {
                completionHandler?(.success(result))
            } else {
                completionHandler?(.failure(EvaluateJavaScriptError.typeMismatchError))
            }
        }
    }
}

/* HACKY: async await
func ts(_ function script: String, completion: (result: AnyObject?, error: NSError?) -> Void) {
    var finished = false
    
    evaluateJavaScript(script) { (result, error) in
        if error == nil {
            if result != nil {
                completion(result: result, error: nil)
            }
        } else {
            completion(result: nil, error: error)
        }
        finished = true
    }
    
    while !finished {
        RunLoop.current().run(mode: .defaultRunLoopMode, before: Date.distantFuture)
    }
}
*/
