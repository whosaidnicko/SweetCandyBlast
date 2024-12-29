//
//  RootNavigation.swift
//  SweetCandyBlast
//
//  Created by Nicolae Chivriga on 29/12/2024.
//

import SwiftUI


final class RootManager: ObservableObject {
    @Published var presentedView: PresentedView = .loading
    
    func changeView(_ view: PresentedView) {
        withAnimation {
            presentedView = view
        }
    }
}


