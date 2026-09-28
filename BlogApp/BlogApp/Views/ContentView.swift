//
//  ContentView.swift
//  BlogApp
//
//  Created by Omsai Mutyalwar on 28/09/26.
//

import SwiftUI

struct ContentView: View {
    let article: Article

    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 16) {

                Text(article.title)
                    .font(.largeTitle)
                    .fontWeight(.bold)

                Image(article.imageName)
                    .resizable()
                    .scaledToFit()
                    .clipShape(
                        RoundedRectangle(cornerRadius: 16)
                    )

                Text(article.body)
                    .font(.body)
            }
            .padding()
        }
        .navigationTitle("Article Detail")
        .navigationBarTitleDisplayMode(.inline)
    }
}

#Preview {
    let demoArticle = Article(
        title: "Swift Optionals",
        imageName: "DemoImage",
        body: """
        Optionals are an important feature of Swift that allows a value to represent either a value or no value.

        Swift provides safe ways to work with optionals using optional binding, optional chaining, and the nil-coalescing operator.
        """
    )
    ContentView(article: demoArticle)
}
