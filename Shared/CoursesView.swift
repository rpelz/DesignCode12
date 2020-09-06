//
//  CourseView.swift
//  DesignCode12
//
//  Created by Robert Pelz on 05.09.20.
//

import SwiftUI

struct CoursesView: View {
    @State var show = false
    @Namespace var namespace
    
    var body: some View {
        ZStack {
            CourseItem()
                .matchedGeometryEffect(id: "Card", in: namespace, isSource: !show)
                .frame(width:335, height: 250)
            if show {
                ScrollView {
                    CourseItem()
                        .matchedGeometryEffect(id: "Card", in: namespace)
                    VStack {
                        ForEach(0 ..< 20) { item in
                            CourseRow()
                        }
                    }
                    .padding()
                }
                .transition(.opacity)
                .edgesIgnoringSafeArea(.all)
            }
        }
        //.animation(.spring())
        .onTapGesture {
            withAnimation(.spring()) {
                show.toggle()
            }
        }
    }
}

struct CourseView_Previews: PreviewProvider {
    static var previews: some View {
        CoursesView()
    }
}
