//
//  PlayerList.swift
//  NBA Players
//
//  Created by Rumin Shah on 7/21/20.
//  Copyright © 2020 Rumin Shah. All rights reserved.
//

import SwiftUI

struct PlayerList: View {
    var body: some View {
        NavigationView {
            List(players) {
                currentPlayer in
                NavigationLink(destination: PlayerDetail(player: currentPlayer)) {
                        PlayerRow(player: currentPlayer).frame(height: 80.00)
                }
            }.navigationBarTitle(Text("NBA Players").foregroundColor(.blue))
        }
    }
}

struct PlayerList_Previews: PreviewProvider {
    static var previews: some View {
        PlayerList()
    }
}
