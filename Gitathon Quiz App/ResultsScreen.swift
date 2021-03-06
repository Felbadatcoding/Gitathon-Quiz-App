//
//  ResultsScreen.swift
//  Gitathon Quiz App
//
//  Created by DWizard11 on 23/6/22.
//

import SwiftUI

struct ResultsScreen: View {
    
    var score: Int
    var totalQuestions: Int
    
    var body: some View {
        VStack {
            circularProgressView(progress: CGFloat(score) / CGFloat(totalQuestions))
                    .frame(width: 150, height: 150)
            
            
            Text("You got")
            Text("\(score)/\(totalQuestions)")
        }
    }
}

struct ResultsScreen_Previews: PreviewProvider {
    static var previews: some View {
        ResultsScreen(score: 2, totalQuestions: 3)
    }
}
