//
//  Reminder+EKReminder.swift
//  Today_Tutorial
//
//  Created by 이승재 on 2023/08/16.
//

import EventKit
import Foundation

extension Reminder {
    init(with ekReminder: EKReminder) throws {
        guard let dueDate = ekReminder.alarms?.first?.absoluteDate else { throw TodayError.reminderHasNoDueDate }
        id = ekReminder.calendarItemIdentifier
        title = ekReminder.title
        self.dueDate = dueDate
        notes = ekReminder.notes
        isComplete = ekReminder.isCompleted
    }
    
}
