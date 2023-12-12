//
//  ContentView.swift
//  createTask
//
//  Created by Park, Andrew on 10/17/23.
//

import SwiftUI

struct CreateView: View 
{
    @ObservedObject var playerData = ReturnDataStore(returns: loadJSON(from: "PlayerData") as! [ReturnData])
    
    var body: some View
    {
        VStack
        {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("Hello, world!")
        }
        .padding()
    }
}

#Preview 
{
    CreateView()
}
