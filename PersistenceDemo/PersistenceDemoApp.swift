//
//  PersistenceDemoApp.swift
//  PersistenceDemo
//
//  Created by David Okun on 5/22/23.
//

import SwiftUI

@main
struct PersistenceDemoApp: App {
  var body: some Scene {
    WindowGroup {
      ContentView(viewModel: ViewModel(["Pizza", "Pasta", "Gnocchi"]))
    }
  }
}
