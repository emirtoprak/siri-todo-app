//
//  ShortcutKeys.swift
//  Runner
//
//  Created by Emir Toprak on 17.06.2025.
//


import AppIntents
import intelligence

// 1. PrepareFood
struct PrepareFood: AppIntent {
  static var title: LocalizedStringResource = "Prepare food"
  static var openAppWhenRun: Bool = true

  @MainActor
  func perform() async throws -> some IntentResult {
    IntelligencePlugin.notifier.push("prepareFood")
    return .result()
  }
}

// 2. GoShopping
struct GoShopping: AppIntent {
  static var title: LocalizedStringResource = "Go shopping"
  static var openAppWhenRun: Bool = true

  @MainActor
  func perform() async throws -> some IntentResult {
    IntelligencePlugin.notifier.push("goShopping")
    return .result()
  }
}

// 3. CleanHouse
struct CleanHouse: AppIntent {
  static var title: LocalizedStringResource = "Clean the house"
  static var openAppWhenRun: Bool = true

  @MainActor
  func perform() async throws -> some IntentResult {
    IntelligencePlugin.notifier.push("cleanHouse")
    return .result()
  }
}

// 4. GoForWalk
struct GoForWalk: AppIntent {
  static var title: LocalizedStringResource = "Go for a walk"
  static var openAppWhenRun: Bool = true

  @MainActor
  func perform() async throws -> some IntentResult {
    IntelligencePlugin.notifier.push("goForWalk")
    return .result()
  }
}

// 5. BuyGroceries
struct BuyGroceries: AppIntent {
  static var title: LocalizedStringResource = "Buy groceries"
  static var openAppWhenRun: Bool = true

  @MainActor
  func perform() async throws -> some IntentResult {
    IntelligencePlugin.notifier.push("buyGroceries")
    return .result()
  }
}

// 6. CallMom
struct CallMom: AppIntent {
  static var title: LocalizedStringResource = "Call Mom"
  static var openAppWhenRun: Bool = true

  @MainActor
  func perform() async throws -> some IntentResult {
    IntelligencePlugin.notifier.push("callMom")
    return .result()
  }
}

// 7. DoLaundry
struct DoLaundry: AppIntent {
  static var title: LocalizedStringResource = "Do laundry"
  static var openAppWhenRun: Bool = true

  @MainActor
  func perform() async throws -> some IntentResult {
    IntelligencePlugin.notifier.push("doLaundry")
    return .result()
  }
}

// 8. WaterPlants
struct WaterPlants: AppIntent {
  static var title: LocalizedStringResource = "Water the plants"
  static var openAppWhenRun: Bool = true

  @MainActor
  func perform() async throws -> some IntentResult {
    IntelligencePlugin.notifier.push("waterPlants")
    return .result()
  }
}

// 9. TakeMedicine
struct TakeMedicine: AppIntent {
  static var title: LocalizedStringResource = "Take medicine"
  static var openAppWhenRun: Bool = true

  @MainActor
  func perform() async throws -> some IntentResult {
    IntelligencePlugin.notifier.push("takeMedicine")
    return .result()
  }
}

// 10. PayBills
struct PayBills: AppIntent {
  static var title: LocalizedStringResource = "Pay bills"
  static var openAppWhenRun: Bool = true

  @MainActor
  func perform() async throws -> some IntentResult {
    IntelligencePlugin.notifier.push("payBills")
    return .result()
  }
}
