//
//  AllAppShortcuts.swift
//  Runner
//
//  Created by Emir Toprak on 16.06.2025.
//
import AppIntents
import intelligence

struct AllAppShortcuts: AppShortcutsProvider {
  static var appShortcuts: [AppShortcut] {
    return [
      // 1. PrepareFood
      AppShortcut(
        intent: PrepareFood(),
        phrases: [
          "Prepare food in \(.applicationName)"
        ]
      ),
      
      // 2. GoShopping
      AppShortcut(
        intent: GoShopping(),
        phrases: [
          "Go shopping in \(.applicationName)"
        ]
      ),
      
      // 3. CleanHouse
      AppShortcut(
        intent: CleanHouse(),
        phrases: [
          "Clean the house in \(.applicationName)"
        ]
      ),
      
      // 4. GoForWalk
      AppShortcut(
        intent: GoForWalk(),
        phrases: [
          "Go for a walk in \(.applicationName)"
        ]
      ),
      
      // 5. BuyGroceries
      AppShortcut(
        intent: BuyGroceries(),
        phrases: [
          "Buy groceries in \(.applicationName)"
        ]
      ),
      
      // 6. CallMom
      AppShortcut(
        intent: CallMom(),
        phrases: [
          "Call Mom in \(.applicationName)"
        ]
      ),
      
      // 7. DoLaundry
      AppShortcut(
        intent: DoLaundry(),
        phrases: [
          "Do laundry in \(.applicationName)"
        ]
      ),
      
      // 8. WaterPlants
      AppShortcut(
        intent: WaterPlants(),
        phrases: [
          "Water the plants in \(.applicationName)"
        ]
      ),
      
      // 9. TakeMedicine
      AppShortcut(
        intent: TakeMedicine(),
        phrases: [
          "Take medicine in \(.applicationName)"
        ]
      ),
      
      // 10. PayBills
      AppShortcut(
        intent: PayBills(),
        phrases: [
          "Pay bills in \(.applicationName)"
        ]
      ),
    ]
  }
}

