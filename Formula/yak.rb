class Yak < Formula
  desc "A tool to log in to AWS through Okta"
  homepage "https://github.com/redbubble/yak"
  url "https://github.com/redbubble/yak/releases/download/v1.1.3/yak_1.1.3_darwin_amd64.tar.gz"
  version "1.1.3"
  sha256 "a933656ebe9764f065d5fc04bcfa503d12bcf58b918be6bced8ddc79605c4a0d"

  def install
    bin.install "yak"
    bash_completion.install "static/completions/yak.bash" => "yak"
    zsh_completion.install "static/completions/yak.zsh" => "_yak"
  end

  test do
    system "#{bin}/yak --help"
  end
end
