//
//  TestimonialTitleView.swift
//  Testimonials Grid Section (iOS)
//
//  Created by Jinwook Kim on 2022/05/02.
//

import SwiftUI

struct TestimonialTitleView: View {
    let name: String
    var colorMode: ColorMode = .light
    var status: String = "Verified Graduate"
    var body: some View {
        VStack(alignment: .leading) {
            Text(name)
                .font(.body)
                .fontWeight(.semibold)
                .foregroundColor(colorMode == .dark ? .white : Color("TitleColor"))
            Text(status)
                .font(.caption)
                .fontWeight(.regular)
                .foregroundColor(colorMode == .dark ? .white.opacity(0.5) : Color("BodyColor"))
        }
    }
}

struct TestimonialTitleView_Previews: PreviewProvider {
    static var previews: some View {
        TestimonialTitleView(name: "Daniel Clifford")
            .padding()
            .previewLayout(.sizeThatFits)
    }
}
