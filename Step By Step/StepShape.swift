//
//  StepShape.swift
//  Step By Step
//
//  Created by Brubrusha on 12/27/20.
//

import SwiftUI

struct StepShape: View {
    let width: CGFloat
    let height: CGFloat

    
    var body: some View {
        GeometryReader { geommetry in
            let size = min(geommetry.size.width, geommetry.size.height)
            let lowLine = size * 0.25
            let nearLine = size * 0.1
            let farLine = size * 0.75
            let middle = size * 0.5
            let bigger = size * 0.90
            let smoller = size * 0.15
            let leftPoint = size * 0.35
            let afterMiddleTen = size * 0.55
            let afterMiddleT = size * 0.65
            let circleSmoller = size * 0.15
            let circleBig = size * 0.35
            
            ZStack {
                Circle()
                    .scaleEffect(0.2)
                    .offset(x: -circleBig, y: -smoller)
                    .foregroundColor(.green)
                Circle()
                    .scaleEffect(0.2)
                    .offset(x: -circleSmoller, y: -leftPoint)
                    .foregroundColor(.green)
                Circle()
                    .scaleEffect(0.2)
                    .offset(x: circleSmoller, y: -leftPoint)
                    .foregroundColor(.green)
                Circle()
                    .scaleEffect(0.2)
                    .offset(x: circleBig, y: -smoller)
                    .foregroundColor(.green)
                
                Path { path in
                    path.move(to: CGPoint(x: lowLine, y: farLine))
                    path.addQuadCurve(to: CGPoint(x: farLine, y: farLine),
                                      control: CGPoint(x: middle, y: bigger))
                    path.move(to: CGPoint(x: lowLine, y: farLine))
                    path.addQuadCurve(to: CGPoint(x: lowLine, y: middle),
                                      control: CGPoint(x: nearLine, y: afterMiddleTen))
                    path.move(to: CGPoint(x: farLine, y: farLine))
                    path.addQuadCurve(to: CGPoint(x: farLine, y: middle),
                                      control: CGPoint(x: bigger, y: afterMiddleTen))
                    path.move(to: CGPoint(x: leftPoint, y: leftPoint))
                    path.addQuadCurve(to: CGPoint(x: afterMiddleT, y: leftPoint),
                                      control: CGPoint(x: middle, y: smoller))
                    
                    
                    path.move(to: CGPoint(x: lowLine, y: middle))
                    path.addLine(to: CGPoint(x: leftPoint, y: leftPoint))
                    path.addLine(to: CGPoint(x: afterMiddleT, y: leftPoint))
                    path.addLine(to: CGPoint(x: farLine, y: middle))
                    path.addLine(to: CGPoint(x: farLine, y: farLine))
                    path.addLine(to: CGPoint(x: lowLine, y: farLine))
                    path.addLine(to: CGPoint(x: lowLine, y: middle))
                }
                .fill(
                    RadialGradient(gradient: Gradient(colors: [.white, .green]),
                        center: .bottom,
                        startRadius: geommetry.size.width * 0.05,
                        endRadius: geommetry.size.width * 0.6))
            }
        }.frame(width: width, height: height)
        .rotationEffect(.degrees(-180))
    }
}

struct StepShape_Previews: PreviewProvider {
    static var previews: some View {
        StepShape(width: 200, height: 200)
    }
}

