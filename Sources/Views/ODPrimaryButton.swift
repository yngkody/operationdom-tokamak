import TokamakDOM

struct ODPrimaryButton: View {
    let title: String
    let action: () -> Void
    var isOutline: Bool = false

    var body: some View {
        Button(action: action) {
            Text(title)
                .font(.system(size: 14, weight: .semibold))
                .padding(.horizontal, 24)
                .padding(.vertical, 12)
        }
        .background(
            isOutline ? Color.clear : ODTheme.Colors.accent
        )
        .foregroundColor(isOutline ? ODTheme.Colors.accent : .white)
        .cornerRadius(999)
        .overlay(
            RoundedRectangle(cornerRadius: 999)
                .stroke(ODTheme.Colors.accent, lineWidth: isOutline ? 1 : 0)
        )
    }
}
