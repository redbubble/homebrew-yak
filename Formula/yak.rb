class Yak < Formula
  desc "A tool to log in to AWS through Okta"
  homepage "https://github.com/redbubble/yak"
  url "https://github.com/redbubble/yak/releases/download/v1.3.4/yak_1.3.4_darwin_amd64.tar.gz"
  version "1.3.4"
  sha256 "c56093dd0fd0cb250a6b9b04d0837755f5a776ca732bf3c3901f2a914f34eef7"

  def install
    bin.install "yak"
    bash_completion.install "static/completions/yak.bash" => "yak"
    zsh_completion.install "static/completions/yak.zsh" => "_yak"
  end

  test do
    system "#{bin}/yak --help"
  end
end
