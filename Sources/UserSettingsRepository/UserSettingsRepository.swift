//
//  UserSettingsRepository.swift
//
//  Created by Константин Богданов on 26.10.2020.
//  Copyright © 2020 Константин Богданов. All rights reserved.
//

import UserSettingsAbstration
import UserSettingsRepositoryAbstraction

/// Репозиторий настроек пользователя
public final class UserSettingsRepository: UserSettingsRepositoryProtocol {
	private let userSettings: UserSettingsServiceProtocol

	private enum Settings: String {
		case didInitializeStorage
	}

	public init(userSettings: UserSettingsServiceProtocol) {
		self.userSettings = userSettings
	}

	public var didIntializeStorage: Bool {
		get {
			return get(setting: .didInitializeStorage) as? Bool ?? false
		} set {
			set(setting: .didInitializeStorage, value: newValue)
		}
	}

	private func get(setting: Settings) -> Any? {
		return userSettings.getValue(for: setting.rawValue)
	}

	private func set(setting: Settings, value: Any) {
		userSettings.set(value: value, for: setting.rawValue)
	}
}
