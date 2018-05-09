class Yak < Formula
  desc "A tool to log in to AWS through Okta"
  homepage "https://github.com/redbubble/yak"
  url "https://github.com/redbubble/yak/releases/download/v1.2.4/yak_1.2.4_darwin_amd64.tar.gz"
  version "1.2.4"
  sha256 "721ff8d95118c390c3590442b0571d234e9a607d70a907695199e26db4e97a7b"

  def install
    bin.install "yak"
    bash_completion.install "static/completions/yak.bash" => "yak"
    zsh_completion.install "static/completions/yak.zsh" => "_yak"
  end

  test do
    system "#{bin}/yak --help"
  end
end
