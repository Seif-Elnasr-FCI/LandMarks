//
//  BadgeBackground.swift
//  Landmarks
//
//  Created by seif amr on 11/05/2023.
//

import SwiftUI

struct BadgeBackground: View {
    var body: some View {
        Path{ path in
            var width: CGFloat = 100.0
            let height = width
            path.move(to: CGPoint(x: width * 0.95, y: height * 0.20))
            
        }
        .fill(.black)
    }
}

struct BadgeBackground_Previews: PreviewProvider {
    static var previews: some View {
        BadgeBackground()
    }
}
