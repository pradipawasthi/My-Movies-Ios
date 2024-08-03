//
//  Page.swift
//  My-Movies-Ios
//
//  Created by Pradip Awasthi on 03/08/24.
//

import SwiftUI

enum Page: String, CaseIterable {
  
case page1 = "playstation.logo"
case page2 = "gamecontroller.fill"
case page3 = "text.bubble.fill"

  
  var title: String {
    switch self {
    case .page1: "Welcome to My Movies"
    case .page2: "Watch movies in virtual reality"
    case .page3: "Explore 1000+ of movies"
      
    }
  }
  
  var subTitle: String {
    switch self {
    case .page1: "We provide hussle free experience in movies"
    case .page2: "Download and watch wherever you are"
    case .page3: "Full on exntertainment gurentieed"

      
    }
    
  }
  
  var index : CGFloat {
    switch self {
    case .page1:
      0
    case .page2:
      2
    case .page3:
      3
    }
  }
  
  /// fetch the next page , it is  not the last page
  ///
  var nextPage : Page {
    let index = Int(self.index) + 1
    if index < 3 {
      return Page.allCases[index]
    }
    return self
  }
  var previousPage: Page {
    let index = Int(self.index) - 1
    if index >= 0{
      return Page.allCases[index]
    }
    return self
  }
  
}
