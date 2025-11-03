class Hit < Formula
  desc "A fast, minimal version control system"
  homepage "https://github.com/Airbornharsh/hit"
  license "MIT"

  if Hardware::CPU.intel?
    url "https://github.com/Airbornharsh/hit/releases/download/v0.0.1/hit-0.0.1-darwin-amd64.tar.gz"
    sha256 "45a46365e8593e24127dceabf4b25a369062cc398f14e761f61512b26e618aa7"
  elsif Hardware::CPU.arm?
    url "https://github.com/Airbornharsh/hit/releases/download/v0.0.1/hit-0.0.1-darwin-arm64.tar.gz"
    sha256 "d15c7632e28c924eed30991f2f4f816d126a4f9f2a70dfc34aecd5167353ade0"
  end

  def install
    bin.install "hit"
  end

  test do
    system "#{bin}/hit", "version"
  end
end