//
//  GradientButtonStyle.swift
//  Hike
//
//  Created by Daniel Coburn on 10/17/23.
//

import Foundation
import SwiftUI

struct GradientButton: ButtonStyle {
    func makeBody(configuration: Configuration) -> some View {
        configuration
            .label
            .padding(.vertical)
            .padding(.horizontal, 30)
            .background(
                // Conditional with Swift Nil Coalescing
                // Condition ? A:B
                configuration.isPressed ?
                //A: when tapped
                LinearGradient(colors: [
                    .customGrayLight,
                    .customGrayMedium
                ],
                               startPoint: .top,
                               endPoint: .bottom
                )
                :
                //B: when not tapped
                
                LinearGradient(colors: [
                    .customGrayMedium,
                    .customGrayLight
                ],
                               startPoint: .top,
                               endPoint: .bottom
                )
            )
            .cornerRadius(40)
    }
}
