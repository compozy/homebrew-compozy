class Compozy < Formula
  desc "Create, automate, and supervise agent work"
  homepage "https://compozy.com"
  version "0.6.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/compozy/compozy/releases/download/v0.6.2/compozy_darwin_arm64.tar.gz"
      sha256 "c4ad5abe367694dfa2adeee624bdd6c7f8fe9c32c8207b206d1f32872bdaf5f9"
    else
      url "https://github.com/compozy/compozy/releases/download/v0.6.2/compozy_darwin_x86_64.tar.gz"
      sha256 "17a7ddc4cab43c781a2e372a1e682ed14dc5c1fc0f43ca0df560be1c40cc38ff"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/compozy/compozy/releases/download/v0.6.2/compozy_linux_arm64.tar.gz"
      sha256 "2bdbf31a92402d3a80dc7fc5543ef3463154a944566e11e0900845a305af4388"
    else
      url "https://github.com/compozy/compozy/releases/download/v0.6.2/compozy_linux_x86_64.tar.gz"
      sha256 "42078a1f44d08aa10b9e4bbf43527aa89888723a05b14f07e21310714dced4db"
    end
  end

  def install
    bin.install "compozy"
  end

  test do
    system "#{bin}/compozy", "version"
  end
end
