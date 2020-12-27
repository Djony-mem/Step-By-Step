//
//  RightStepThrid.swift
//  Step By Step
//
//  Created by Brubrusha on 12/27/20.
//

import SwiftUI

struct RightStepThrid: View {
    var showRightStepThird: Bool
    
    var body: some View {
        StepShape(width: 50, height: 50)
            .frame(width: 100, alignment: .trailing)
            .opacity(showRightStepThird ? 1 : 0)
            .animation(.easeIn(duration: 0.5))
    }
}

struct RightStepThrid_Previews: PreviewProvider {
    static var previews: some View {
        RightStepThrid(showRightStepThird: true)
    }
}
