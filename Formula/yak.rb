class Yak < Formula
  desc "A tool to log in to AWS through Okta"
  homepage "https://github.com/redbubble/yak"
  url "https://github.com/redbubble/yak/releases/download/v1.5.1/yak_1.5.1_darwin_amd64.tar.gz"
  version "1.5.1"
  sha256 "eb6c8bdb63376af7e1105516f221c5a7a4690a16ccdab9e93d034e7e7187cfd9"

  def install
    bin.install "yak"
    bash_completion.install "static/completions/yak.bash" => "yak"
    zsh_completion.install "static/completions/yak.zsh" => "_yak"
  end

  test do
    system "#{bin}/yak --help"
  end
end
