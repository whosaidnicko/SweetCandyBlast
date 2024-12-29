//
//  RootNavigationView.swift
//  SweetCandyBlast
//
//  Created by Nicolae Chivriga on 29/12/2024.
//

import SwiftUI


struct RootNavigationView: View {
    @StateObject private var rootNavigation: RootManager = RootManager()
    var body: some View {
        ZStack {
            Image("backgroungImage")
                .resizable()
                .ignoresSafeArea()
            
            VStack {
                Group {
                    switch rootNavigation.presentedView {
                    case .game:
                        GameView()
                        
                    case .loading:
                        LoadingView()
                        
                    case .menu:
                        MenuView()
                        
                    case .options:
                        OptionsView()
                        
                    case .rules:
                        
                        RulesView()

                    }
                }
                .transition(.scale)
            }
            
        }
        .environmentObject(rootNavigation)
    }
}
