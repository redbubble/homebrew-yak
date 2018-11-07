class Yak < Formula
  desc "A tool to log in to AWS through Okta"
  homepage "https://github.com/redbubble/yak"
  url "https://github.com/redbubble/yak/releases/download/v1.5.0-1/yak_1.5.0-1_darwin_amd64.tar.gz"
  version "1.5.0-1"
  sha256 "195d07cf9e38f65bbbb10457ef73d2bfc157b91fa08250a67ab19c854e2f028c"

  def install
    bin.install "yak"
    bash_completion.install "static/completions/yak.bash" => "yak"
    zsh_completion.install "static/completions/yak.zsh" => "_yak"
  end

  test do
    system "#{bin}/yak --help"
  end
end
