class Yak < Formula
  desc "A tool to log in to AWS through Okta"
  homepage "https://github.com/redbubble/yak"
  url "https://github.com/redbubble/yak/releases/download/v1.3.2/yak_1.3.2_darwin_amd64.tar.gz"
  version "1.3.2"
  sha256 "939c1e08cbe52d1a68eb41a88f916aed631c18d676b53aedd1b113eb6ac0d8e3"

  def install
    bin.install "yak"
    bash_completion.install "static/completions/yak.bash" => "yak"
    zsh_completion.install "static/completions/yak.zsh" => "_yak"
  end

  test do
    system "#{bin}/yak --help"
  end
end
