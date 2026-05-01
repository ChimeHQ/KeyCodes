extension Character {
	/// Creates a character representing the a single UTF-16 code point.
	public init?(utf16CodePoint: UInt16) {
		guard let scalar = Unicode.Scalar(utf16CodePoint) else {
			return nil
		}

		self.init(Unicode.Scalar(scalar))
	}
}

extension String {
	/// Creates a string containing a single UTF-16 code point.
	public init?(utf16CodePoint: UInt16) {
		guard let char = Character(utf16CodePoint: utf16CodePoint) else {
			return nil
		}

		self.init(char)
	}
}
