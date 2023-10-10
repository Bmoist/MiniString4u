import AudioKit
import SwiftUI
import Keyboard
import Tonic

struct CookbookKeyboard: View {
    var noteOn: (Pitch, CGPoint) -> Void = { _, _ in }
    var noteOff: (Pitch) -> Void
    var body: some View {
        Keyboard(layout: .piano(pitchRange: Pitch(55) ... Pitch(80)),
                 noteOn: noteOn, noteOff: noteOff)
    }
}
