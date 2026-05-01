extension Character {
	init?(utf16CodePoint: UInt16) {
		guard let scalar = Unicode.Scalar(utf16CodePoint) else {
			return nil
		}

		self.init(Unicode.Scalar(scalar))
	}
}

extension String {
	init?(utf16CodePoint: UInt16) {
		guard let char = Character(utf16CodePoint: utf16CodePoint) else {
			return nil
		}

		self.init(char)
	}
}