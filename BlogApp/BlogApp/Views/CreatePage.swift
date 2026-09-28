//
//  CreatePage.swift
//  BlogApp
//
//  Created by Omsai Mutyalwar on 28/09/26.
//

import SwiftUI
import Foundation

struct CreatePage: View {

    @Environment(ArticleViewModel.self) private var viewModel
    @Environment(\.dismiss) private var dismiss

    @State private var title = ""
    @State private var articleBody = ""

    var body: some View {

        NavigationStack {
            Form {
                Section {
                    TextField("Add a title to your post", text: $title)
                }
                .modifier(SectionModifier())

                Section {
                    TextEditor(text: $articleBody)
                        .frame(minHeight: 300)
                }
                .modifier(SectionModifier())

                Section {
                    Button("Save") {
                        guard !title.isEmpty, !articleBody.isEmpty else {
                            return
                        }

                        viewModel.addArticle(
                            title: title,
                            body: articleBody
                        )

                        dismiss()
                    }
                    .frame(maxWidth: .infinity)
                }
                .modifier(SectionModifier())
            }
            .navigationTitle("Create Post")
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}

// Created a custom section modifier.
struct SectionModifier: ViewModifier {
    func body(content: Content) -> some View {
        content
            .padding(10)
            .overlay(
                RoundedRectangle(cornerRadius: 8)
                    .stroke(.blue, lineWidth: 1)
            )
    }
}
