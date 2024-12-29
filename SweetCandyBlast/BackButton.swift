//
//  BackButton.swift
//  SweetCandyBlast
//
//  Created by Nicolae Chivriga on 29/12/2024.
//

import SwiftUI


struct BackButton: View {
    @EnvironmentObject private var rootManager: RootManager
    var body: some View {
        Image("bs")
            .onTapGesture {
                rootManager.changeView(.menu)
            }
    }
}
