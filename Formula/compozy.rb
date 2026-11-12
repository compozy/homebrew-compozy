class Compozy < Formula
  desc "Create, automate, and supervise agent work"
  homepage "https://compozy.com"
  version "0.6.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/compozy/compozy/releases/download/v0.6.1/compozy_darwin_arm64.tar.gz"
      sha256 "b567ded7c88203274b7090dc3f74ca6a58eaaf958d174c0dc5375d9ca078fc46"
    else
      url "https://github.com/compozy/compozy/releases/download/v0.6.1/compozy_darwin_x86_64.tar.gz"
      sha256 "a12d6b5207158b78add41b4f954702e376946f4209a695454e0bfd98ba72c867"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/compozy/compozy/releases/download/v0.6.1/compozy_linux_arm64.tar.gz"
      sha256 "be3e9d396b33403f57f6a257ad73dff9e33957c08320ce18322256815327e546"
    else
      url "https://github.com/compozy/compozy/releases/download/v0.6.1/compozy_linux_x86_64.tar.gz"
      sha256 "ca8016f803b514b048b77987223f6dceb1162c259ac869ea79225e5340615810"
    end
  end

  def install
    bin.install "compozy"
  end

  test do
    system "#{bin}/compozy", "version"
  end
end
