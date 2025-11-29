import TokamakDOM
import JavaScriptKit

@main
struct OperationDomApp: App {
    // Global one-time setup
    init() {
        let document = JSObject.global.document

        // Load a Google Font (Space Grotesk = nice, modern, similar vibe)
        _ = document.head.insertAdjacentHTML("beforeend", #"""
        <link
          rel="stylesheet"
          href="https://fonts.googleapis.com/css2?family=Space+Grotesk:wght@400;500;600;700&display=swap">
        <style>
          :root {
            color-scheme: dark;
          }

          html, body {
            margin: 0;
            padding: 0;
            min-height: 100%;
          }

          body {
            font-family: "Space Grotesk", system-ui, -apple-system,
                         BlinkMacSystemFont, "Segoe UI", sans-serif;
            background:
              radial-gradient(140% 140% at 0% 0%, #2a1660 0%, #050716 40%, #050716 100%);
            color: #fdfcff;
          }

          /* Optional: constrain the app width & center it */
          #tokamak-root {
            max-width: 1120px;
            margin: 0 auto;
            padding: 32px 20px 80px;
          }

          a {
            color: inherit;
            text-decoration: none;
          }

          button {
            font-family: inherit;
          }
        </style>
        """#)
    }

    var body: some Scene {
        WindowGroup("OperationDom") {
            ContentView()
        }
    }
}
