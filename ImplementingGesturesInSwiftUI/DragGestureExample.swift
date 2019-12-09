//
//  DragGestureExample.swift
//  ImplementingGesturesInSwiftUI
//
//  Created by ramil on 09.12.2019.
//  Copyright © 2019 com.ri. All rights reserved.
//

import SwiftUI

struct DragGestureExample: View {
    @State var rectangleOffset: CGSize = .zero

    var body: some View {
        // DragGesture creation
        let dragGesture = DragGesture()
                // When drag location is changed we recalculate offset for the rectangle
                .onChanged { value in
                    self.rectangleOffset = value.translation
                }
                // When gesture ended we return the rectangle to the initial position
                .onEnded { _ in
                    self.rectangleOffset = .zero
                }

        return Rectangle()
                .foregroundColor(.green)
                .cornerRadius(40)
                // Change position for the rectangle
                .offset(rectangleOffset)
                .frame(width: 200, height: 100, alignment: .center)
                // Add the dragGesture to this view
                .gesture(dragGesture)
    }
}

struct DragGestureExample_Previews: PreviewProvider {
    static var previews: some View {
        DragGestureExample()
    }
}
