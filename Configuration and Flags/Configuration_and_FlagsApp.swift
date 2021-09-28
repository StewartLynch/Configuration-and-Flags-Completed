//
//  Configuration_and_FlagsApp.swift
//  Configuration and Flags
//
//  Created by Stewart Lynch on 2021-09-27.
//

import SwiftUI

@main
struct Configuration_and_FlagsApp: App {
    init() {
        #if DEVELOPMENT
        print("I am in DEVELOPMENT")
        #elseif DEBUG
        print("I am in DEBUG")
        #else
        print("I am in RELEASE")
        #endif
    }
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}
