//
//  TapGestureExample.swift
//  ImplementingGesturesInSwiftUI
//
//  Created by ramil on 09.12.2019.
//  Copyright © 2019 com.ri. All rights reserved.
//

import SwiftUI

struct TapGestureExample: View {
    @State var rectangleColor = Color(.green)
    var body: some View {
        // TapGesture creation
        let tapGesture = TapGesture()
            // Change color when tap ended
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
            // Add tapGesture to this view
            .gesture(tapGesture)
    }
}

struct TapGestureExample_Previews: PreviewProvider {
    static var previews: some View {
        TapGestureExample()
    }
}
