class Compozy < Formula
  desc "Create, automate, and supervise agent work"
  homepage "https://compozy.com"
  version "0.7.7"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/compozy/compozy/releases/download/v0.7.7/compozy_darwin_arm64.tar.gz"
      sha256 "76c76de3f278fc5978d5dbe3ffadf09f19ba643788f6a6fd71000efc1b6e0d69"
    else
      url "https://github.com/compozy/compozy/releases/download/v0.7.7/compozy_darwin_x86_64.tar.gz"
      sha256 "0035aa5ff48717e0f4263d7f0397a3973af1365e8b80ee82452d18c056b0b97b"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/compozy/compozy/releases/download/v0.7.7/compozy_linux_arm64.tar.gz"
      sha256 "d705b4a6039429caff4e58532f424fb21ca66352783762fc6e94bd28f606d2f4"
    else
      url "https://github.com/compozy/compozy/releases/download/v0.7.7/compozy_linux_x86_64.tar.gz"
      sha256 "4a025a2d81d888985b0c7863d5151e04afe0f179905a18333baedfa2a86bc7ea"
    end
  end

  def install
    bin.install "compozy"
  end

  test do
    system "#{bin}/compozy", "version"
  end
end
