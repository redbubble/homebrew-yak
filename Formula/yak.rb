class Yak < Formula
  desc "A tool to log in to AWS through Okta"
  homepage "https://github.com/redbubble/yak"
  url "https://github.com/redbubble/yak/releases/download/v1.5.3/yak_1.5.3_darwin_amd64.tar.gz"
  version "1.5.3"
  sha256 "6abafc0e06004eda65cf143a589fba0bdc23a88ace43069c80c1dbdcc85b3a0c"

  def install
    bin.install "yak"
    bash_completion.install "static/completions/yak.bash" => "yak"
    zsh_completion.install "static/completions/yak.zsh" => "_yak"
  end

  test do
    system "#{bin}/yak --help"
  end
end
