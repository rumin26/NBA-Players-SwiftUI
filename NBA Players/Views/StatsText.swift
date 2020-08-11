//
//  StatsText.swift
//  NBA Players
//
//  Created by Rumin Shah on 7/21/20.
//  Copyright © 2020 Rumin Shah. All rights reserved.
//

import SwiftUI

struct StatsText: View {
    
    let statName: String
    let statVal: String
    
    var body: some View {
        
        HStack {
            Text(statName + ":")
                .font(.system(size: 35.0))
                .fontWeight(.heavy)
                .padding(.leading, 30.0).foregroundColor(.blue)
            Text(statVal)
                .font(.system(size: 35.0))
                .fontWeight(.light).padding(.trailing, 30.0)
                .foregroundColor(.blue)
            Spacer()
        }.minimumScaleFactor(0.5).lineLimit(1)
        
    }
}

struct StatsText_Previews: PreviewProvider {
    static var previews: some View {
        StatsText(statName: "Age", statVal: "28")
    }
}
