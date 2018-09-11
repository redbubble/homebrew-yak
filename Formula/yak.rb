class Yak < Formula
  desc "A tool to log in to AWS through Okta"
  homepage "https://github.com/redbubble/yak"
  url "https://github.com/redbubble/yak/releases/download/v1.4.2/yak_1.4.2_darwin_amd64.tar.gz"
  version "1.4.2"
  sha256 "543d2255e155ad473f99a13d1b9967affe5c683fe58d2df0f3d522320f1de5de"

  def install
    bin.install "yak"
    bash_completion.install "static/completions/yak.bash" => "yak"
    zsh_completion.install "static/completions/yak.zsh" => "_yak"
  end

  test do
    system "#{bin}/yak --help"
  end
end
