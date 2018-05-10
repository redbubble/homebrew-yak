class Yak < Formula
  desc "A tool to log in to AWS through Okta"
  homepage "https://github.com/redbubble/yak"
  url "https://github.com/redbubble/yak/releases/download/v1.2.4-1/yak_1.2.4-1_darwin_amd64.tar.gz"
  version "1.2.4-1"
  sha256 "ba934be411830959bc47f8ca9ab4bacec5577971fe3fe4c15a0a69bf5b11e5d2"

  def install
    bin.install "yak"
    bash_completion.install "static/completions/yak.bash" => "yak"
    zsh_completion.install "static/completions/yak.zsh" => "_yak"
  end

  test do
    system "#{bin}/yak --help"
  end
end
