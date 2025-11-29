import TokamakDOM

enum ODTheme {
    enum Colors {
        static let background = Color(red: 5/255, green: 7/255, blue: 22/255)
        static let surface     = Color(red: 13/255, green: 16/255, blue: 40/255)
        static let accent      = Color(red: 173/255, green: 94/255, blue: 255/255)
        static let accentSoft  = Color(red: 111/255, green: 180/255, blue: 255/255)
        static let textPrimary = Color.white
        static let textMuted   = Color.white.opacity(0.7)
    }

    enum Spacing {
        static let page: Double    = 32
        static let section: Double = 56
        static let gap: Double     = 16
    }
}

// Reusable text styles as view helpers
extension View {
    func heroTitleStyle() -> some View {
        font(.system(size: 40, weight: .bold))
    }

    func heroSubtitleStyle() -> some View {
        font(.system(size: 18, weight: .medium))
            .opacity(0.9)
    }

    func bodyTextStyle() -> some View {
        font(.system(size: 15, weight: .regular))
            .opacity(0.85)
    }

    func sectionTitleStyle() -> some View {
        font(.system(size: 22, weight: .semibold))
    }
}
