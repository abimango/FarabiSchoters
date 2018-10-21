//
//  Scholarship.swift
//  Schoters
//
//  Created by Farabi Ramadhan Arief on 21/10/18.
//  Copyright © 2018 Farabi Ramadhan Arief. All rights reserved.
//

import UIKit

class Scholarship: NSObject, Codable {
    
    let id: Int
    let name: String
    let slug: String
    let description_eng: String
    let description_id: String
    let created_at: String
    let updated_at: String
    let published_at: String
    let image_url: String
    
    init(id: Int, name: String, slug: String, description_eng: String, description_id: String, created_at: String, updated_at: String, published_at: String, image_url: String) {
        self.id = id
        self.name = name
        self.slug = slug
        self.description_eng = description_eng
        self.description_id = description_id
        self.created_at = created_at
        self.updated_at = updated_at
        self.published_at = published_at
        self.image_url = image_url
    }
}
