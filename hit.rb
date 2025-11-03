class Hit < Formula
  desc "A fast, minimal version control system"
  homepage "https://github.com/Airbornharsh/hit"
  license "MIT"

  if Hardware::CPU.intel?
    url "https://github.com/Airbornharsh/hit/releases/download/v0.0.1/hit-0.0.1-darwin-amd64.tar.gz"
    sha256 "45a46365e8593e24127dceabf4b25a369062cc398f14e761f61512b26e618aa7"
  elsif Hardware::CPU.arm?
    url "https://github.com/Airbornharsh/hit/releases/download/v0.0.1/hit-0.0.1-darwin-arm64.tar.gz"
    sha256 "8af8482ba5f8e11e7af1134d031627355e411c007e5c2a60e89b95185b6d4cbb"
  end

  def install
    bin.install "hit"
  end

  test do
    system "#{bin}/hit", "version"
  end
end