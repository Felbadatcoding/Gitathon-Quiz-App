//
//  circular progress view.swift
//  Gitathon Quiz App
//
//  Created by DWizard11 on 23/6/22.
//

import SwiftUI

struct circularProgressView: View {
    
    var progress: CGFloat
    
    var body: some View {
        ZStack {
                    Circle()
                        .stroke(lineWidth: 20)
                        .opacity(0.3)
                        .foregroundColor(.red)
                    
                    Circle()
                        .trim(from: 0, to: progress)
                        .stroke(style: .init(lineWidth: 20.0,
                                             lineCap: .round,
                                             lineJoin: .round))
                        .foregroundColor(.red)
                        .rotationEffect(Angle(degrees: 270))
                }
            }
        }

struct circular_progress_view_Previews: PreviewProvider {
    static var previews: some View {
        circularProgressView(progress: 2)
    }
}
