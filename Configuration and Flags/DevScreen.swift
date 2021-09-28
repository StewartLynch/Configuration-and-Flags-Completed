//
//  DevScreen.swift
//  Configurations and Flags
//
//  Created by Stewart Lynch on 2021-09-27.
//

import SwiftUI

struct DevScreen: View {
    var body: some View {
        VStack {
            Text("For Development only")
                .font(.title)
            Image("Logo")
                .resizable()
                .frame(width: 200, height: 200)
            .scaledToFit()
        }
    }
}

struct DevScreen_Previews: PreviewProvider {
    static var previews: some View {
        DevScreen()
    }
}
