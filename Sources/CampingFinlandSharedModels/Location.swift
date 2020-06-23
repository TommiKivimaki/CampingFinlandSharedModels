// Copyright © 23.6.2020 Tommi Kivimäki.

import Foundation

/// Location model supporting Codable
public struct Location: Codable {
  var address: String
  var latitude: Double
  var longitude: Double
  
  public init(address: String = "", latitude: Double = 61, longitude: Double = 23) {
    self.address = address
    self.latitude = latitude
    self.longitude = longitude
  }
}
