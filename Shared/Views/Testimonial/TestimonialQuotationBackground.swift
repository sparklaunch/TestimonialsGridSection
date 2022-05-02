//
//  TestimonialQuotationBackground.swift
//  Testimonials Grid Section (iOS)
//
//  Created by Jinwook Kim on 2022/05/02.
//

import SwiftUI

struct TestimonialQuotationBackground: View {
    var body: some View {
        Image(decorative: "QuotationMark")
            .resizable()
            .frame(width: 104, height: 102)
            .offset(x: -30, y: .zero)
    }
}

struct TestimonialQuotationBackground_Previews: PreviewProvider {
    static var previews: some View {
        TestimonialQuotationBackground()
            .offset(x: 30, y: .zero)
            .padding()
            .previewLayout(.sizeThatFits)
    }
}
