//
//  CourseView.swift
//  DesignCode12
//
//  Created by Robert Pelz on 05.09.20.
//

import SwiftUI

struct CoursesView: View {
    var body: some View {
        #if os(iOS)
        content
            .listStyle(InsetGroupedListStyle())
        #else
        content
            .frame(minWidth: 800, minHeight: 600)
        #endif
    }
    
    var content: some View {
        List(0 ..< 20) { item in
            CourseRow()
        }
        .navigationTitle("Courses")
    }
}

struct CourseView_Previews: PreviewProvider {
    static var previews: some View {
        CoursesView()
    }
}
