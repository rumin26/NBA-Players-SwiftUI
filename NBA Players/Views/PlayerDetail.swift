//
//  PlayerDetail.swift
//  NBA Players
//
//  Created by Rumin Shah on 7/11/20.
//  Copyright © 2020 Rumin Shah. All rights reserved.
//

import SwiftUI

struct PlayerDetail: View {
    let player: Player
    
    var body: some View {
        VStack {
            Image(player.team.imageName)
                .resizable()
                .aspectRatio(contentMode: .fit)
            Image(player.imageName)
                .clipShape(Circle())
                .background(Circle().foregroundColor(.white))
                .overlay(Circle().stroke(Color.white, lineWidth: 5.0))
                .offset(x: 0.0, y: -90.0)
                .padding(.bottom, -90.0)
                .shadow(radius: 10.0)
            Text(player.name)
                .font(.system(size: 35.0))
                .fontWeight(.heavy)
                .foregroundColor(.blue)
                .shadow(radius: 2.0).padding(.bottom, 30.0)
            StatsText(statName: "Age", statVal: "\(player.age)")
            StatsText(statName: "Height", statVal: "\(player.height)")
            StatsText(statName: "Weight", statVal: "\(player.weight)lbs")
            Spacer()
        }.edgesIgnoringSafeArea(.top)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        PlayerDetail(player: players[0])
    }
}
