//
//  ContentView.swift
//  Code History
//
//  Created by Aries Magat on 5/3/22.
//

import SwiftUI

struct ContentView: View {
    
    let question = Question(questionText: "What was the first computer bug?", possibleAnswers: ["Ant", "Beetle","Moth","Fly"], correctAnswerIndex: 2)
    
    @State var mainColor = Color(red: 20/255, green: 28/255, blue:58/255)
    let accentColor = Color(red: 48/255, green: 105/255, blue:240/255)
    let white = Color(red: 1, green: 1, blue: 1)
    
    
    var body: some View {
        ZStack{
            mainColor.ignoresSafeArea()
            VStack{
                Text("1/10")
                    .font(.callout)
                    .multilineTextAlignment(.leading)
                    .padding()
                Text(question.questionText)
                    .font(.largeTitle)
                    .bold()
                    .multilineTextAlignment(.leading)
                Spacer()
                HStack{
                    ForEach(0..<question.possibleAnswers.count) { answerIndex in
                        Button(action: {
                            print("Tapped on \(question.possibleAnswers[answerIndex])")
                            mainColor = answerIndex == question.correctAnswerIndex ? .green : .red
                        }, label: {
                            ChoiceTextView(choiceText: question.possibleAnswers[answerIndex])
                        })
                    }
//                    Button(action: {
//                        print("Tapped Choice 1")
//                    },label: {
//                        ChoiceTextView(choiceText: question.possibleAnswers[0])
//                    })
//
//                    Button(action: {
//                        print("Tapped Choice 2")
//                    },label: {
//                        ChoiceTextView(choiceText: question.possibleAnswers[1])
//                    })
//                    Button(action: {
//                        print("Tapped Choice 3")
//                    },label: {
//                        ChoiceTextView(choiceText: question.possibleAnswers[2])
//                    })
//
//                    Button(action: {
//                        print("Tapped Choice 4")
//                    },label: {
//                        ChoiceTextView(choiceText: question.possibleAnswers[3])
//                    })
                }
            }
        }
        .foregroundColor(.white)
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
