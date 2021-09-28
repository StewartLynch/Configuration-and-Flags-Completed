//
//  ContentView.swift
//  Configuration and Flags
//
//  Created by Stewart Lynch on 2021-09-27.
//

import SwiftUI

struct ContentView: View {
    @State private var showDevelopment = false
    let site:String = try! Configuration.value(for: "CT_HELP_SITE")
    var body: some View {
        NavigationView {
            VStack {
                Text("Create a Development Environment!")
                Link("Get Help",
                     destination: URL(string: "https://" + site)!)
                    .font(.title2)
            }
            .navigationTitle("Config & Flags")
            .toolbar {
                #if DEVELOPMENT
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button {
                        showDevelopment.toggle()
                    } label: {
                        Text("Dev")
                    }
                }
                #endif
            }
        }
        .sheet(isPresented: $showDevelopment) {
            DevScreen()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
