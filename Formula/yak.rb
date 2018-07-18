class Yak < Formula
  desc "A tool to log in to AWS through Okta"
  homepage "https://github.com/redbubble/yak"
  url "https://github.com/redbubble/yak/releases/download/v1.3.5/yak_1.3.5_darwin_amd64.tar.gz"
  version "1.3.5"
  sha256 "811b45418a58dd6f3b35da1721193ef89d37304ecb001ccf90d1d10e1da70b8d"

  def install
    bin.install "yak"
    bash_completion.install "static/completions/yak.bash" => "yak"
    zsh_completion.install "static/completions/yak.zsh" => "_yak"
  end

  test do
    system "#{bin}/yak --help"
  end
end
