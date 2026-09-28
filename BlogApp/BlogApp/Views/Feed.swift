//
//  Feed.swift
//  BlogApp
//
//  Created by Omsai Mutyalwar on 28/09/26.
//

import SwiftUI

struct Feed: View {
    @Environment(ArticleViewModel.self) private var viewModel
    @State private var showCreatePage = false

    var body: some View {
        NavigationStack {
            ZStack(alignment: .bottomTrailing) {
                List(viewModel.articles) { article in
                    NavigationLink {
                        ContentView(article: article)
                    } label: {
                        ArticleCell(article: article)
                    }
                }

                CreateButton {
                    showCreatePage = true
                }
                .sheet(isPresented: $showCreatePage) {
                    CreatePage()
                        .environment(viewModel)
                }
            }
            .navigationTitle("Demo Blog")
        }
    }
}

// Preview of Feed.
#Preview("Learn SwiftUI") {
    @Previewable @State var viewModel = ArticleViewModel()

    Feed()
        .environment(viewModel)
}
