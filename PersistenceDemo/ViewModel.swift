//
//  ViewModel.swift
//  PersistenceDemo
//
//  Created by David Okun on 5/22/23.
//

import Foundation

class ViewModel: ObservableObject {
  @Published var dishes: [String]
  
  init(_ initialDishes: [String] = []) {
    dishes = [String]()
    for dish in initialDishes {
      dishes.append(dish)
    }
  }
  
  public func saveDish(_ dish: String) {
    dishes.append(dish)
  }
}
