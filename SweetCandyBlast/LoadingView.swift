//
//  LoadingView.swift
//  SweetCandyBlast
//
//  Created by Nicolae Chivriga on 29/12/2024.
//

import SwiftUI


struct LoadingView: View {
    @EnvironmentObject private var navigationManager: RootManager
 
    var body: some View {
        VStack {
            Image("elmbi")
            
           
        }
        .onAppear() {
           
            DispatchQueue.main.asyncAfter(deadline: .now() + 3.2) {
                navigationManager.changeView(.menu)
            }
        }
    }
}
