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
        ZStack {
            testimonial.featuredColor
            VStack(spacing: 16) {
                HStack {
                    TestimonialPhotoView(photo: testimonial.photo)
                    VStack {
                        Text(testimonial.name)
                            .font(.title3)
                            .fontWeight(.semibold)
                            .foregroundColor(testimonial.colorMode == .dark ? .white : Color("TitleColor"))
                        Text(testimonial.status)
                            .font(.body)
                            .fontWeight(.regular)
                            .foregroundColor(testimonial.colorMode == .dark ? .white.opacity(0.5) : Color("BodyColor"))
                    }
                }
            }
        }
    }
}

struct TestimonialView_Previews: PreviewProvider {
    static var previews: some View {
        TestimonialView(testimonial: .init())
            .previewLayout(.sizeThatFits)
    }
}
