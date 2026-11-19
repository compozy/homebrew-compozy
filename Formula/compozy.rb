class Compozy < Formula
  desc "Create, automate, and supervise agent work"
  homepage "https://compozy.com"
  version "0.7.6"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/compozy/compozy/releases/download/v0.7.6/compozy_darwin_arm64.tar.gz"
      sha256 "1fecdf8f7c9b7b62937837bb7e32d6206662c9a378ef04f0898d9dfe5ae7b169"
    else
      url "https://github.com/compozy/compozy/releases/download/v0.7.6/compozy_darwin_x86_64.tar.gz"
      sha256 "7dc8a7ccbd2759a37171b021155d61ca89e7516df490362878f26757446a6928"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/compozy/compozy/releases/download/v0.7.6/compozy_linux_arm64.tar.gz"
      sha256 "4d561755d4464062bf1fbce300d1a269ba8355348c17dbc27f18aa6963f0831f"
    else
      url "https://github.com/compozy/compozy/releases/download/v0.7.6/compozy_linux_x86_64.tar.gz"
      sha256 "d01839842c9a2c3665f8e2a554d2a951d88738c4e5ac365e18f9d06745e040f1"
    end
  end

  def install
    bin.install "compozy"
  end

  test do
    system "#{bin}/compozy", "version"
  end
end
