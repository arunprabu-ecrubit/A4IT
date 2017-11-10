//
//  userModel.swift
//  a4it
//
//  Created by user906979 on 11/9/17.
//  Copyright © 2017 ecrubit. All rights reserved.
//

class userModel{
    var id: String?
    var title: String?
    var message: String?
    
    init(id:String?, title: String?, message: String? ){
        self.id = id;
        self.title = title;
        self.message = message;
    }
}
