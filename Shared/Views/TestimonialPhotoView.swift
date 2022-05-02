//
//  TestimonialPhotoView.swift
//  Testimonials Grid Section (iOS)
//
//  Created by Jinwook Kim on 2022/05/02.
//

import SwiftUI

struct TestimonialPhotoView: View {
    let photo: Image
    var body: some View {
        photo
            .resizable()
            .frame(width: 32, height: 32)
            .clipShape(Circle())
            .padding(1)
            .overlay(
                Circle()
                    .stroke(.white.opacity(0.5), lineWidth: 2)
            )
    }
}

struct TestimonialPhotoView_Previews: PreviewProvider {
    static var previews: some View {
        TestimonialPhotoView(photo: .init("Daniel"))
            .padding()
            .previewLayout(.sizeThatFits)
    }
}
