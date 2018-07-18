class Yak < Formula
  desc "A tool to log in to AWS through Okta"
  homepage "https://github.com/redbubble/yak"
  url "https://github.com/redbubble/yak/releases/download/v1.3.4/yak_1.3.4_darwin_amd64.tar.gz"
  version "1.3.4"
  sha256 "c217f8a71474072b4c725254abf0ce741da672dfb320e118cc4c6ff7eaada7a9"

  def install
    bin.install "yak"
    bash_completion.install "static/completions/yak.bash" => "yak"
    zsh_completion.install "static/completions/yak.zsh" => "_yak"
  end

  test do
    system "#{bin}/yak --help"
  end
end
