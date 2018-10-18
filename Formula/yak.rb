class Yak < Formula
  desc "A tool to log in to AWS through Okta"
  homepage "https://github.com/redbubble/yak"
  url "https://github.com/redbubble/yak/releases/download/v1.5.0/yak_1.5.0_darwin_amd64.tar.gz"
  version "1.5.0"
  sha256 "9d1082f7bebcc8dc81fddca234456577ac7128e97e57bef85cb8726bb67bd31b"

  def install
    bin.install "yak"
    bash_completion.install "static/completions/yak.bash" => "yak"
    zsh_completion.install "static/completions/yak.zsh" => "_yak"
  end

  test do
    system "#{bin}/yak --help"
  end
end
