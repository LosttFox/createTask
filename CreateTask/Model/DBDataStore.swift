//
//  DBDataStore.swift
//  CreateTask
//
//  Created by Park, Andrew on 12/18/23.
//

import Foundation
import Combine

class DBDataStore : ObservableObject
{
    @Published var db : DBData
    
    init (db: DBData)
    {
        self.db = db
    }
}
