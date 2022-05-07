//
//  ContentView.swift
//  Code History
//
//  Created by Aries Magat on 5/3/22.
//

import SwiftUI

struct GameView: View {
    @StateObject var viewModel = GameViewModel()
    
//    let question = Question(questionText: "What was the first computer bug?", possibleAnswers: ["Ant", "Beetle","Moth","Fly"], correctAnswerIndex: 2)
    var body: some View {
        ZStack{
            GameColor.main.ignoresSafeArea()
            VStack{
                Text(viewModel.questionProgressText)
                    .font(.callout)
                    .multilineTextAlignment(.leading)
                    .padding()
                QuestionView(question: viewModel.currentQuestion)
            }
            .foregroundColor(.white)
            .navigationBarHidden(true)
            .environmentObject(viewModel)
        }
        .background(
            NavigationLink(destination: ScoreView(viewModel: ScoreViewModel(correctGuesses: viewModel.correctGuesses, incorrectGuesses: viewModel.incorrectGuesses)), isActive: .constant(viewModel.gameIsOver), label: {EmptyView()}
        )
//        .background(
//            NavigationLink(destination: Text("Game Over!"), isActive: .constant(viewModel.gameIsOver), label: {
//                EmptyView()
//            })
            
        )
        .foregroundColor(.white)
        //.background(NavigationLink(destination: Text("Game Over!", isActive: .constant(viewModel.gameIsOver), label: {EmptyView()}))
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        GameView()
    }
}
