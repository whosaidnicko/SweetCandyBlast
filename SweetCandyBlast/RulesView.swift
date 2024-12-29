//
//  RulesView.swift
//  SweetCandyBlast
//
//  Created by Nicolae Chivriga on 29/12/2024.
//

import SwiftUI

struct RulesView: View {
    @EnvironmentObject private var navigationManager: RootManager
    var body: some View {
        ZStack {
            VStack {
                HStack {
                    Button {
                        navigationManager.changeView(.menu)
                    } label: {
                        BackButton()
                    }
                    Spacer()
                }
                Spacer()
            }
            .padding()
            Image("roles")
                
                    Text("""
Drag the pieces onto the board to create rows of matching items. Three identical pieces merge into one of a higher level. Keep combining and leveling up to score points!
""")
                    .font(.system(size: 15, weight: .semibold, design: .serif))
                    .multilineTextAlignment(.center)
                    .foregroundColor(.white)
                    .padding(.top, 50)
                    .padding(.horizontal, 70)
                
        }
    }
}
