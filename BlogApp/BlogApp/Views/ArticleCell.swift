//
//  ArticleCell.swift
//  BlogApp
//
//  Created by Omsai Mutyalwar on 28/09/26.
//

import SwiftUI

// A single cell containing the title, image and few lines of body in the Articles Blog list.
struct ArticleCell: View {
    let article: Article

    var body: some View {
        HStack(spacing: 12) {
            Image(article.imageName)
                .resizable()
                .scaledToFill()
                .frame(width: 90, height: 90)
                .clipShape(RoundedRectangle(cornerRadius: 12))

            VStack(alignment: .leading, spacing: 6) {
                Text(article.title)
                    .font(.headline)
                Text(article.body)
                    .font(.subheadline)
                    .foregroundStyle(.secondary)
                    .lineLimit(3)
            }
        }
        .padding(.vertical, 8)
    }
}

// Preview of Article cell.
#Preview {
    let demoArticle = Article(
        title: "Swift Optionals",
        imageName: "DemoImage",
        body: """
        Optionals are an important feature of Swift that allows a value to represent either a value or no value.
        Swift provides safe ways to work with optionals using optional binding, optional chaining, and the nil-coalescing operator.
        """
    )

    ArticleCell(article: demoArticle)
}
