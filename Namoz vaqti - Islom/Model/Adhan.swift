//
//  Adhan.swift
//  Namoz , Duolar , Suralar , Tahorat ...
//
//  Created by Elbek Shaykulov on 11/10/20.
//  Copyright © 2020 Elbek Shaykulov. All rights reserved.
//

import Foundation

struct Adhan: Codable {
   
    var data : Datas?
    
    struct Datas: Codable {
        var timings: Timings?
    }

    struct Timings : Codable {
        var Fajr: String?
        var Sunrise: String?
        var Dhuhr: String?
        var Asr: String?
        var Sunset: String?
        var Isha: String?
         
    }
}
