//
//  AddDishView.swift
//  PersistenceDemo
//
//  Created by David Okun on 5/22/23.
//

import SwiftUI

struct AddDishView: View {
  @EnvironmentObject var viewModel: ViewModel
  @State var textFieldContent: String = ""
  
  var body: some View {
    VStack {
      Text("What is your dish called?")
      TextField("dish name", text: $textFieldContent)
        .textFieldStyle(.roundedBorder)
      Button {
        if !textFieldContent.isEmpty {
          viewModel.saveDish(textFieldContent)
        }
        textFieldContent = ""
      } label: {
        Label("Save", systemImage: "opticaldisc")
      }
    }.padding()
  }
}

struct AddDishView_Previews: PreviewProvider {
  static var previews: some View {
    AddDishView(viewModel: .init())
  }
}
