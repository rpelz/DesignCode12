//
//  CourseDetail.swift
//  DesignCode12
//
//  Created by Robert Pelz on 09.09.20.
//

import SwiftUI

struct CourseDetail: View {
    var course: Course
    var namespace: Namespace.ID
    
    var body: some View {
        VStack {
            ScrollView {
                CourseItem(course: course)
                    .matchedGeometryEffect(id: course.id, in: namespace)
                    .frame(height: 300)
                VStack {
                    ForEach(courseSections) { item in
                        CourseRow(item: item)
                        Divider()
                    }
                }
                .padding()
            }
            
        }
        .background(Color("Background 1"))
        .clipShape(RoundedRectangle(cornerRadius: 22, style: .continuous))
        .matchedGeometryEffect(id: "container\(course.id)", in: namespace)
        .edgesIgnoringSafeArea(.all)
    }
}

struct CourseDetail_Previews: PreviewProvider {
    @Namespace static var namespace
    static var previews: some View {
        CourseDetail(course: courses[0], namespace: namespace)
    }
}
