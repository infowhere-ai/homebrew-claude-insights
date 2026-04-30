# Homebrew formula template for claude-insights.
# Auto-updated by the release workflow via update-homebrew-formula.sh.
# Do not edit manually — changes will be overwritten on next release.
#
# Live formula: https://github.com/infowhere-ai/homebrew-claude-insights

class ClaudeInsights < Formula
  desc "Real-time dashboard for Claude Code sessions"
  homepage "https://github.com/infowhere-ai/claude-insights"
  version "1.0.0b1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/infowhere-ai/claude-insights/releases/download/v1.0.0b1/claude-insights-macos-arm64"
      sha256 "e551d38e7e2687032820f7cda846124f0057e0246f8e46ec26e75e45327a4df3"
    end
  end

  def install
    bin.install "claude-insights-macos-arm64" => "claude-insights"
  end

  def caveats
    <<~EOS
      To install the Claude Code hook, run:
        claude-insights install

      To start the dashboard:
        claude-insights start

      The dashboard will be available at http://localhost:4000
    EOS
  end

  test do
    assert_match "claude-insights", shell_output("#{bin}/claude-insights --version")
  end
end
