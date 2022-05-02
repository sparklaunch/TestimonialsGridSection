//
//  Testimonial.swift
//  Testimonials Grid Section (iOS)
//
//  Created by Jinwook Kim on 2022/05/02.
//

import SwiftUI

enum ColorMode {
    case dark
    case light
}

struct Testimonial {
    let name: String
    let photo: Image
    let header: String
    let detail: String
    var status: String = "Verified Graduate"
    var featuredColor: Color = .white
    var hasQuotationMark: Bool = false
    var colorMode: ColorMode {
        featuredColor == .white ? .light : .dark
    }
}

// MARK: Testimonial conforms to Hashable.

extension Testimonial: Hashable {
    func hash(into hasher: inout Hasher) {
        hasher.combine(name)
    }
}

// MARK: Default Implementation of Testimonial.

extension Testimonial {
    init() {
        self.name = "Daniel Clifford"
        self.photo = Image("Daniel")
        self.header = """
I received a job offer mid-course, and the subjects I learned were current, if not more so, in the company I joined. I honestly feel I got every penny's worth.
"""
        self.detail = """
I was an EMT for many years before I joined the bootcamp. I've been looking to make a transition and have heard some people who had an amazing experience here. I signed up for the free intro course and found it incredibly fun! I enrolled shortly thereafter. The next 12 weeks was the best - and more grueling - time of my life. Since completing the course, I've successfully switched careers, working as a Software Engineer at a VR startup.
"""
        self.featuredColor = Color("DanielColor")
        self.hasQuotationMark = true
    }
}

// MARK: TestimonialStorage Class.

class TestimonialStorage: ObservableObject {
    @Published var testimonials: [Testimonial] = [
        .init(name: "Daniel Clifford", photo: Image("Daniel"), header: """
I received a job offer mid-course, and the subjects I learned were current, if not more so, in the company I joined. I honestly feel I got every penny's worth.
""", detail: """
I was an EMT for many years before I joined the bootcamp. I've been looking to make a transition and have heard some people who had an amazing experience here. I signed up for the free intro course and found it incredibly fun! I enrolled shortly thereafter. The next 12 weeks was the best - and more grueling - time of my life. Since completing the course, I've successfully switched careers, working as a Software Engineer at a VR startup.
""", featuredColor: Color("DanielColor"), hasQuotationMark: true),
        .init(name: "Jonathan Walters", photo: Image("Jonathan"), header: """
The team was very supportive and kept me motivated
""", detail: """
I started as a total newbie with virtually no coding skills. I now work as a mobile engineer for a big company. This was one of the best investments I've made in myself.
""", featuredColor: Color("JonathanColor")),
        .init(name: "Jeanette Harmon", photo: Image("Jeanette"), header: """
An overall wonderful and rewarding experience
""", detail: """
Thank you for the wonderful experience! I now have a job I really enjoy, and make a good living while doing something I love.
"""),
        .init(name: "Patrick Abrams", photo: Image("Patrick"), header: """
Awesome teaching support from TAs who did the bootcamp themselves. Getting guidance from them and learning from their experiences was easy.
""", detail: """
The staff seem genuinely concerned about my progress which I find really refreshing. The program gave me the confidence necessary to be able to go out in the world and present myself as a capable junior developer. The standard is above the rest. You will get the personal attention you need from an incredible community of smart and amazing people.
""", featuredColor: Color("PatrickColor")),
        .init(name: "Kira Whittle", photo: Image("Kira"), header: """
Such a life-changing experience. Highly recommended!
""", detail: """
Before joining the bootcamp, I've never written a line of code. I needed some structure from professionals who can help me learn programming step by step. I was encouraged to enroll by a former student of theirs who can only say wonderful things about the program. The entire curriculum and staff did not disappoint. They were very hands-on and I never had to wait long for assistance. The agile team project, in particular, was outstanding. It took my learning to the next level in a way that no tutorial could ever have. In fact, I've often referred to it during interviews as an example of my development experience. It certainly helped me land a job as a full-stack developer after receiving multiple offers. 100% recommend!
""")
    ]
}
