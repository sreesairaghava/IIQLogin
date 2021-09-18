//
//  Image+Ext.swift
//  IIQLogin
//
//  Created by Sree Sai Raghava Dandu on 18/09/21.
//

import SwiftUI

extension Image {
    
    func data(url:URL) -> Self {
        
        if let data = try? Data(contentsOf: url) {
            
            return Image(uiImage: UIImage(data: data)!)
                
                .resizable()
            
        }
        
        return self.resizable()
    }
}