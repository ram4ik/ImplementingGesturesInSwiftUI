//
//  RotationGestureExample.swift
//  ImplementingGesturesInSwiftUI
//
//  Created by ramil on 09.12.2019.
//  Copyright © 2019 com.ri. All rights reserved.
//

import SwiftUI

struct RotationGestureExample: View {
    @State var rectangleRotationAngle: Angle = .zero

    var body: some View {
        // DragGesture creation
        let rotationGesture = RotationGesture()
                // Rotation angle recalculation for the rectangle
                .onChanged { value in
                    self.rectangleRotationAngle = value
                }

        return Rectangle()
                .foregroundColor(.green)
                .cornerRadius(40)
                // Rotate the rectangle
                .rotationEffect(rectangleRotationAngle)
                .frame(width: 200, height: 100, alignment: .center)
                // Add the rotationGesture to this view
                .gesture(rotationGesture)
    }
}

struct RotationGestureExample_Previews: PreviewProvider {
    static var previews: some View {
        RotationGestureExample()
    }
}
