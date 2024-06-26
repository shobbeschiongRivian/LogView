//
// Created by Alexey Nenastev on 27.10.23.
// Copyright © 2023 Alexey Nenastyev (github.com/alexejn). All Rights Reserved.

import Foundation
import OSLog

@available(iOS 15.0, *)
extension LogView {

  /// Predicate for feathing entries from OSLogStore
  public static var predicate: NSPredicate?

  public typealias FilterEntries = (OSLogEntryLog) -> Bool

  /// Additional filter after fetcnig from store. Not all condition can be used when filter with predicate.
  /// This additional opportunity to view only wished logs
  public static var filterEntries: FilterEntries = { _ in true }
}

public extension NSPredicate {
  /// Predicate for fetching from OSLogStore, allow to condition subsystem, and set if empty subsystem should be filtered.
  static func subsystemIn(_ values: [String], orNil: Bool = true) -> NSPredicate {
    NSPredicate(format: "\(orNil ? "subsystem == nil OR" : "") subsystem in $LIST")
      .withSubstitutionVariables(["LIST" : values])
  }
}
