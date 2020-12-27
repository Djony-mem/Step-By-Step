//
//  StepsAction.swift
//  Step By Step
//
//  Created by Brubrusha on 12/27/20.
//

import SwiftUI

struct StepsAction: View {
    var showLeftStepFirst: Bool
    var showRightStepFirst: Bool
    var showLeftStepSecond: Bool
    var showRightStepSecond: Bool
    var showLeftStepThird: Bool
    var showRightStepThird: Bool
    
    var body: some View {
        VStack {
            LeftStepFirst(showLeftStepFirst: showLeftStepFirst)
            RightStepFirst(showRightStepFirst: showRightStepFirst)
            LeftStepSecond(showLeftStepSecond: showLeftStepSecond)
            RightStepSecond(showRightStepSecond: showRightStepSecond)
            LeftStepSecond(showLeftStepSecond: showLeftStepThird)
            RightStepThrid(showRightStepThird: showRightStepThird)
        }
    }
}

struct StepsAction_Previews: PreviewProvider {
    static var previews: some View {
        StepsAction(showLeftStepFirst: true, showRightStepFirst: false, showLeftStepSecond: true, showRightStepSecond: true, showLeftStepThird: true, showRightStepThird: true)
    }
}
