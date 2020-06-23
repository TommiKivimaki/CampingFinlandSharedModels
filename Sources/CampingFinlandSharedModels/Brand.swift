// Copyright © 23.6.2020 Tommi Kivimäki.

import Foundation

public struct Brand: Codable {
  public enum Kind: String, Codable {
    case wildCamping, nationalParks, overnightStays, campingFi
  }
  
  var id: Identifier<Brand>?
  var kind: Kind?
  var name: String
  var web: String?
  var phone: Int?
  var available: String?
  var availableBeginDate: Date?
  var availableEndDate: Date?
  var features: Features?
  var locations: [Location]
  var lastMileUrl: String?
  
  public init(id: Identifier<Brand>? = nil,
              kind: Kind,
              name: String = "",
              web: String? = nil,
              phone: Int? = nil,
              available: String? = nil,
              availableBeginDate: Date? = nil,
              availableEndDate: Date?,
              features: Features? = nil,
              locations: [Location] = [Location()],
              lastMileUrl: String? = nil) {
    self.id = id
    self.kind = kind
    self.name = name
    self.web = web
    self.phone = phone
    self.available = available
    self.availableBeginDate = availableBeginDate
    self.availableEndDate = availableEndDate
    self.features = features
    self.locations = locations
    self.lastMileUrl = lastMileUrl
  }
}
