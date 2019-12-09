//
//  LongPressGestureExample.swift
//  ImplementingGesturesInSwiftUI
//
//  Created by ramil on 09.12.2019.
//  Copyright © 2019 com.ri. All rights reserved.
//

import SwiftUI

struct LongPressGestureExample: View {
    @State var rectangleColor = Color(.green)

    var body: some View {
        // LongPressGesture creation
        // Gesture will be handled only if if takes at least 2 seconds
        let longPressGesture = LongPressGesture(minimumDuration: 2, maximumDistance: 10)
                .onEnded { _ in
                    if self.rectangleColor == .red {
                        self.rectangleColor = .green
                    } else {
                        self.rectangleColor = .red
                    }
                }

        return Rectangle()
                // Change color
                .foregroundColor(rectangleColor)
                .cornerRadius(40)
                .frame(width: 200, height: 100, alignment: .center)
                // Add the longPressGesture to this view
                .gesture(longPressGesture)
    }
}

struct LongPressGestureExample_Previews: PreviewProvider {
    static var previews: some View {
        LongPressGestureExample()
    }
}
