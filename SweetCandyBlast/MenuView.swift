//
//  MenuView.swift
//  SweetCandyBlast
//
//  Created by Nicolae Chivriga on 29/12/2024.
//

import SwiftUI

struct MenuView: View {
    @EnvironmentObject var rootManager: RootManager
    var body: some View {
        VStack {
           Image("elmbi")
                .resizable()
                .scaledToFit()
            
            
            
            VStack(spacing: 20) {
                navigationButton(changeView: .game, text: "playbt")
                
                HStack() {
                    navigationButton(changeView: .rules, text: "rul")
                    Spacer()
                    navigationButton(changeView: .options, text: "settigs")
                }
                .padding(.horizontal)
            }
            
        }
    }
    
    func navigationButton(changeView: PresentedView, text: String) -> some View {
            Button {
                rootManager.changeView(changeView)
            } label: {
                ZStack {
              Image(text)
                        .resizable()
                        .scaledToFit()
                    }
            }

    
    }
}
