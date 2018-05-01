class Yak < Formula
  desc "Software to create fast and easy drum rolls."
  homepage "https://github.com/redbubble/yak"
  url "https://github.com/redbubble/yak/releases/download/v1.1.2/yak_1.1.2_darwin_amd64.tar.gz"
  version "1.1.2"
  sha256 "40b5d7c639e586b3f90fc7102b16e93f4d840f71f1afda43960a8938dafb59c5"

  def install
    bin.install "yak"
    bash_completion.install "static/completions/yak.bash" => "yak"
    zsh_completion.install "static/completions/yak.zsh" => "_yak"
  end

  test do
    system "#{bin}/yak --help"
  end
end
