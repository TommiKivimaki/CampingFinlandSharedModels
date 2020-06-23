// Copyright © 23.6.2020 Tommi Kivimäki.

import Foundation


/// This is a generic Identifier<T> implementation.
/// This will be used for camping sites a.k.a Brands

public struct Identifier<T>: Hashable {
  let string: String
}

// This extension makes the Identifier from String. So instead of
// typing ```let id = Identifier(string: String)``` we can type
// let id = "any string"
extension Identifier: ExpressibleByStringLiteral {
  public init(stringLiteral value: StringLiteralType) {
    string = value
  }
}


// We need to conformace to create id's from variables and constants.
// Uses the same init as ExpressibleByStringLiteral, so the conformance
// to it is actually redundant.
extension Identifier: ExpressibleByStringInterpolation {}

// This extension makes it simple to print the Identifier. This basically
// selects what will be printed when Identifier will be printed
// print(question.id)
extension Identifier: CustomStringConvertible {
  public var description: String {
    return string
  }
}


/*
 Let's implement a custom Encodable and Decodable support.
 If we just marked the Identifier to conform to Codable the
 compiler would encode the Identifier as a struct, e.g.
 Let's have this example model:
 ```
 struct Brand: Codable {
   let id: Identifier<Brand>
   let name: String
 }
 let newBrand = Brand(id: "new-brand", name: "New Brand")
 ```
 
 The newBrand would be encoded to:
 {
   "id" : {
     "string" : "new-brand"
   },
   "name" : "New Brand"
 }
 
 By using a custom Encodable and Decodable functionality we can implement
 the Identifier to encode just like a string. So the newBrand would
 be encoded to:
 {
   "id" : "new-brand",
   "name" : "New Brand"
 }
*/
extension Identifier: Codable {
  public init(from decoder: Decoder) throws {
    let container = try decoder.singleValueContainer()
    string = try container.decode(String.self)
  }

  public func encode(to encoder: Encoder) throws {
    var container = encoder.singleValueContainer()
    try container.encode(string)
  }
}
