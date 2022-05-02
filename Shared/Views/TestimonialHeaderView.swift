//
//  TestimonialHeaderView.swift
//  Testimonials Grid Section (iOS)
//
//  Created by Jinwook Kim on 2022/05/02.
//

import SwiftUI

struct TestimonialHeaderView: View {
    let text: String
    var colorMode: ColorMode = .light
    var body: some View {
        Text(text)
            .font(.title3)
            .fontWeight(.semibold)
            .foregroundColor(colorMode == .dark ? .white : Color("TitleColor"))
            .lineSpacing(5)
    }
}

struct TestimonialHeaderView_Previews: PreviewProvider {
    static var previews: some View {
        TestimonialHeaderView(text: "Hello, World!!")
            .padding()
            .previewLayout(.sizeThatFits)
    }
}
