//
//  TestimonialDetailView.swift
//  Testimonials Grid Section (iOS)
//
//  Created by Jinwook Kim on 2022/05/02.
//

import SwiftUI

struct TestimonialDetailView: View {
    let text: String
    var colorMode: ColorMode = .light
    var body: some View {
        Text("\" \(text) \"")
            .font(.footnote)
            .fontWeight(.semibold)
            .foregroundColor(colorMode == .dark ? .white.opacity(0.5) : Color("BodyColor"))
            .lineSpacing(5)
    }
}

struct TestimonialDetailView_Previews: PreviewProvider {
    static var previews: some View {
        TestimonialDetailView(text: "Hello, World!!")
            .padding()
            .previewLayout(.sizeThatFits)
    }
}
