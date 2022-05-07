//
//  ScoreView.swift
//  Code History
//
//  Created by Aries Magat on 5/7/22.
//

import SwiftUI

struct ScoreView: View {
    let viewModel:ScoreViewModel
    var body: some View {
        ZStack{
            GameColor.main.ignoresSafeArea()
            VStack{
                Spacer()
                Text("Final Score")
                    .font(.system(.body))
                    .padding()
                Text("\(viewModel.percentage)%")
                    .font(.system(size: 50))
                    .bold()
                    .padding()
                Spacer()
                VStack{
                    Text("\(viewModel.correctGuesses) ✅")
                    Text("\(viewModel.incorrectGuesses) ❌")
                }
                .font(.system(size: 30))
                Spacer()
                NavigationLink(destination: GameView(), label: {
                    BottomTextView(str: "Play Again")
                })
            }
            .foregroundColor(.white)
            .navigationBarHidden(true)
        }
    }
}

struct ScoreView_Previews: PreviewProvider {
    static var previews: some View {
        ScoreView(viewModel: ScoreViewModel(correctGuesses: 8, incorrectGuesses: 2))
    }
}
