//
//  CreateButton.swift
//  BlogApp
//
//  Created by Omsai Mutyalwar on 28/09/26.
//

import SwiftUI

struct CreateButton: View {
    let createAction: () -> Void

    var body: some View {
        Button(action: createAction) {
            Image(systemName: "plus")
                .font(.title2)
                .foregroundStyle(.black)
                .frame(width: 40, height: 40)
                .background(.blue)
                .clipShape(Circle())
                .shadow(radius: 5)
        }
        .padding()
    }
}
