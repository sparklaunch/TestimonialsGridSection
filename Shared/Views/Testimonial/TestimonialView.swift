//
//  TestimonialView.swift
//  Testimonials Grid Section (iOS)
//
//  Created by Jinwook Kim on 2022/05/02.
//

import SwiftUI

struct TestimonialView: View {
    let testimonial: Testimonial
    var body: some View {
        ZStack(alignment:.topLeading) {
            testimonial.featuredColor
            VStack(alignment: .leading, spacing: 16) {
                HStack(spacing: 12) {
                    TestimonialPhotoView(photo: testimonial.photo)
                    TestimonialTitleView(name: testimonial.name, colorMode: testimonial.colorMode, status: testimonial.status)
                }
                TestimonialHeaderView(text: testimonial.header, colorMode: testimonial.colorMode)
                TestimonialDetailView(text: testimonial.detail, colorMode: testimonial.colorMode)
            }
            .padding(24)
        }
        .cornerRadius(15)
        .shadow(radius: 10)
        .fixedSize(horizontal: false, vertical: true)
    }
}

struct TestimonialView_Previews: PreviewProvider {
    static var previews: some View {
        TestimonialView(testimonial: .init())
            .padding()
            .previewLayout(.sizeThatFits)
    }
}
