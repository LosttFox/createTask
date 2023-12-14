//
//  Utilities.swift
//  CreateTask
//
//  Created by Park, Andrew on 12/12/23.
//

import Foundation

func loadJSON (from file : String) -> Any
{
    if let dataSourceURL = Bundle.main.url(forResource: file, withExtension: "json")
    {
        let data = try! Data(contentsOf: dataSourceURL)
        let decoder = JSONDecoder()
        
        do
        {
            if (file == "PlayerData")
            {
                let results = try decoder.decode(PlayerData.self, from: data)
                
                print("Player ID: \(results.player._id)")
                
                return results
            }
        }
        catch
        {
            print(error.localizedDescription)
        }
    }
    
    return []
}
