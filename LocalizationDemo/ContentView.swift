//
//  ContentView.swift
//  LocalizationDemo
//
//  Created by Vivek Jayakumar on 8/9/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        Text(L10n.Login.Main.title)
            .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
