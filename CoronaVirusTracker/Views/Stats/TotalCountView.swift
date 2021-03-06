//
//  TotalCountView.swift
//  CoronaVirusTracker
//
//  Created by Alfian Losari on 06/03/20.
//  Copyright © 2020 Alfian Losari. All rights reserved.
//

import SwiftUI
import UIKit

struct TotalCountView: View {
    
    let totalCountText: String
    let subtitleText: String
    
    var body: some View {
        VStack {
            Text(totalCountText)
                .font(.title)
            Text(subtitleText)
                .font(.subheadline)
        }
    }
}

