//
//  ContentView.swift
//  createTask
//
//  Created by Park, Andrew on 10/17/23.
//

import SwiftUI

struct CreateView: View 
{
//    @ObservedObject var playerData = PlayerDataStore(call: loadJSON(from: "PlayerData") as! PlayerData)
//    @ObservedObject var dbData = DBDataStore(db: loadJSON(from: "PlayerDB") as! DBData)
    
    var body: some View
    {
        VStack
        {
            Text("The player is Name")
//            AsyncImage(url: URL(string: dbData.db.data.player.avatar))
            
            NavigationStack
            {
                List
                {
                    Section
                    {
                        
                    }
                    Section
                    {
                        
                    }
                }
            }
            
        }
        .padding()
    }
}

#Preview 
{
    CreateView()
}
