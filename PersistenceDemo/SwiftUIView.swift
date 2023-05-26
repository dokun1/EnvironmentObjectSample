//
//  SwiftUIView.swift
//  PersistenceDemo
//
//  Created by David Okun on 5/22/23.
//

import SwiftUI

struct SwiftUIView: View {
  @EnvironmentObject var model: ViewModel
  var body: some View {
    Text("You have \(model.dishes.count) dishes")
  }
}

struct SwiftUIView_Previews: PreviewProvider {
  static var previews: some View {
    SwiftUIView()
  }
}
