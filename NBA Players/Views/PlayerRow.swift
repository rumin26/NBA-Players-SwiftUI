//
//  PlayerRow.swift
//  NBA Players
//
//  Created by Rumin Shah on 7/21/20.
//  Copyright © 2020 Rumin Shah. All rights reserved.
//

import SwiftUI

struct PlayerRow: View {
    let player: Player
    
    var body: some View {
        HStack {
            Image(player.imageName)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .clipShape(Circle())
                .background(Circle().foregroundColor(player.team.color))
                .padding(.top, 10)
                .padding(.bottom, 10)
            Text(player.name)
                .font(.largeTitle)
                .offset(x: 10, y: 0)
                .foregroundColor(.blue)
                .minimumScaleFactor(0.5)
                .lineLimit(1)
            Spacer()
        }
    }
}

struct PlayerRow_Previews: PreviewProvider {
    static var previews: some View {
        PlayerRow(player: players[0]).previewLayout(.fixed(width: 500, height: 100))
    }
}
