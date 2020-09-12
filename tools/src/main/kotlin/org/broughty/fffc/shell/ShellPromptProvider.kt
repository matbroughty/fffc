package org.broughty.fffc.shell

import org.jline.utils.AttributedString
import org.jline.utils.AttributedStyle
import org.springframework.shell.jline.PromptProvider
import org.springframework.stereotype.Component

@Component
class ShellPromptProvider : PromptProvider {
  override fun getPrompt(): AttributedString {
    return AttributedString("fffc:>",
      AttributedStyle.DEFAULT.foreground(AttributedStyle.YELLOW))
  }
}
