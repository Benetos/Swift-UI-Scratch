//
//  ViewRouter.swift
//  Leonitus
//
//  Created by Matthew Ross on 6/21/20.
//  Copyright © 2020 Matthew Ross. All rights reserved.
//

import Foundation
import SwiftUI
import Combine

class ViewRouter: ObservableObject {
    @Published var currentView = "home"
    
}

class Pop: ObservableObject {
    @Published var popMenu = "pop10"
}
