//
//  ContentView.swift
//  PersistenceDemo
//
//  Created by David Okun on 5/22/23.
//

import SwiftUI

struct ContentView: View {
  @StateObject var viewModel: ViewModel
  @State var showAddDishView: Bool = false
  
  var body: some View {
    NavigationStack {
      List(viewModel.dishes, id: \.self) { dish in
        Text(dish)
      }
      .navigationTitle("Tasty Dishes")
      .toolbar {
        ToolbarItem {
          Button {
            showAddDishView.toggle()
          } label: {
            Image(systemName: "plus")
          }
        }
      }.sheet(isPresented: $showAddDishView) {
        AddDishView()
      }
    }.environmentObject(viewModel)
  }
}

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView(viewModel: .init())
  }
}
