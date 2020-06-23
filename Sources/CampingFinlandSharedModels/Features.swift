// Copyright © 23.6.2020 Tommi Kivimäki.

import Foundation

/// Features model supporting Codable
public struct Features: Codable {
  var accessibility: Bool
  var electricity: Bool
  var shower: Bool
  var toilet: Bool
  var toiletDump: Bool
  var water: Bool
  
  public init(accessibility: Bool = false,
              electricity: Bool = false,
              shower: Bool = false,
              toilet: Bool = false,
              toiletDump: Bool = false,
              water: Bool = false) {
    self.accessibility = accessibility
    self.electricity = electricity
    self.shower = shower
    self.toilet = toilet
    self.toiletDump = toiletDump
    self.water = water
  }
}
