//
//  ContentView.swift
//  Shared
//
//  Created by Jinwook Kim on 2022/05/02.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject var testimonialStorage: TestimonialStorage = .init()
    var body: some View {
        ZStack {
            BackgroundView()
            ScrollView {
                VStack(spacing: 24) {
                    ForEach(testimonialStorage.testimonials, id: \.self) { testimonial in
                        TestimonialView(testimonial: testimonial)
                    }
                }
                .padding()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
