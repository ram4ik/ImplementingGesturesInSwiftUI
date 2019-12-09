//
//  MagnificationGestureExample.swift
//  ImplementingGesturesInSwiftUI
//
//  Created by ramil on 09.12.2019.
//  Copyright © 2019 com.ri. All rights reserved.
//

import SwiftUI

struct MagnificationGestureExample: View {
    @State var rectangleScaleEffect: CGFloat = CGFloat(1)

    var body: some View {
        // MagnificationGesture creation
        let magnificationGesture = MagnificationGesture()
                // Scale effect recalculation for the rectangle
                .onChanged { value in
                    self.rectangleScaleEffect = value
                }

        return Rectangle()
                .foregroundColor(.green)
                .cornerRadius(40)
                // Change scale effect
                .scaleEffect(rectangleScaleEffect)
                .frame(width: 200, height: 100, alignment: .center)
                // Add the magnificationGesture to this view
                .gesture(magnificationGesture)
    }
}

struct MagnificationGestureExample_Previews: PreviewProvider {
    static var previews: some View {
        MagnificationGestureExample()
    }
}
