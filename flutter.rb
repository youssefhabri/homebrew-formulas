class Flutter < Formula
  desc "Build beautiful native apps in record time"
  homepage "https://flutter.io/"
  url "https://storage.googleapis.com/flutter_infra/releases/beta/macos/flutter_macos_v0.7.3-beta.zip"
  sha256 "72ee026522be9cfc552b02886c9697f8bee0626635bc425b41b64c01e5253565"

  bottle :unneeded

  def install
    allfiles = File.join(buildpath, "**", "{*,.*}")
    mv Dir.glob(allfiles), Dir.glob(prefix), :force => true
  end

  def post_install
    rm File.join(HOMEBREW_PREFIX, "bin", "flutter.bat")
    chmod_R "+rwx", File.join(prefix, "bin"), :verbose => true
  end

  test do
    system "false"
  end
end
