//
//  Article.swift
//  BlogApp
//
//  Created by Omsai Mutyalwar on 28/09/26.
//
import Foundation

struct Article: Identifiable, Codable {
    let id: UUID
    let title: String
    let imageName: String
    let body: String

    // We will use the DemoImage for all blogs for the Demo.
    init(
        id: UUID = UUID(),
        title: String,
        imageName: String = "DemoImage",
        body: String
    ) {
        self.id = id
        self.title = title
        self.imageName = imageName
        self.body = body
    }
}
