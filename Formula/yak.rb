class Yak < Formula
  desc "A tool to log in to AWS through Okta"
  homepage "https://github.com/redbubble/yak"
  url "https://github.com/redbubble/yak/releases/download/v1.3.4/yak_1.3.4_darwin_amd64.tar.gz"
  version "1.3.4"
  sha256 "912b6da4fb8abf021c53a6a8aa1c38e1636d323b7b9b23b2a4944cb56c7ecbd0"

  def install
    bin.install "yak"
    bash_completion.install "static/completions/yak.bash" => "yak"
    zsh_completion.install "static/completions/yak.zsh" => "_yak"
  end

  test do
    system "#{bin}/yak --help"
  end
end
