//
//  ArticleViewModel.swift
//  BlogApp
//
//  Created by Omsai Mutyalwar on 28/09/26.
//

import Foundation

@Observable
final class ArticleViewModel {

    // Creating the demo articles data.
    var articles: [Article] = [
        Article(
            title: "Swift Optionals",
            body: """
            Optionals are an important feature of Swift that allows a value to represent either a value or no value.

            Swift provides safe ways to work with optionals using optional binding, optional chaining, and the nil-coalescing operator.
            """
        ),

        Article(
            title: "Swift Generics",
            body: """
            Generics allow you to write flexible and reusable code that can work with different types.

            They are commonly used with functions, structures, classes, and protocols to avoid duplicating similar implementations.
            """
        ),

        Article(
            title: "Swift Protocols",
            body: """
            Protocols define a blueprint of methods, properties, and other requirements that a type can adopt.

            Protocol-oriented programming is an important part of Swift and helps developers create flexible and reusable code.
            """
        ),

        Article(
            title: "Swift Concurrency",
            body: """
            Swift Concurrency provides modern tools for writing asynchronous and concurrent code.

            Features such as async, await, Task, async let, and TaskGroup make it easier to perform asynchronous work while keeping code readable and maintainable.
            """
        ),

        Article(
            title: "Swift Closures",
            body: """
            Closures are self-contained blocks of functionality that can be passed around and used throughout your Swift program.

            They are commonly used as completion handlers, callbacks, and with collection methods such as map, filter, and reduce.
            """
        ),

        Article(
            title: "Error Handling",
            body: """
            Swift provides a structured approach to handling errors using throws, do-catch, try, and throw.

            Error handling allows applications to respond gracefully when something goes wrong instead of unexpectedly terminating.
            """
        )
    ]

    // Method to add the article in the articles.
    func addArticle(title: String, body: String) {
        let article = Article(title: title, body: body)
        articles.append(article)
    }
}
