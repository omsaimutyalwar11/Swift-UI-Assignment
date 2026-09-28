//
//  BlogAppApp.swift
//  BlogApp
//
//  Created by Omsai Mutyalwar on 28/09/26.
//

import SwiftUI

@main
struct BlogAppApp: App {

    @State private var viewModel = ArticleViewModel()

    var body: some Scene {
        WindowGroup {
            Feed()
            .environment(viewModel)
        }
    }
}
