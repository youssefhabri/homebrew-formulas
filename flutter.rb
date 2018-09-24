class Flutter < Formula
  desc "Build beautiful native apps in record time"
  homepage "https://flutter.io/"
  version "0.9.2"
  url "https://github.com/flutter/flutter.git"
  sha256 "6e3ba2da94fb150d2cb8e0596eeb92c86e5e437e91a5f39f211bd4b21d0b24f8"

  bottle :unneeded

  def install
    system "git", "fetch", "--tags"
    system "git", "checkout", "tags/v0.9.2"
    system "./bin/flutter"
    allfiles = File.join(buildpath, "**", "{*,.*}")
    mv Dir.glob(allfiles), Dir.glob(prefix), :force => true

    # we can leave dart/pub since they are relative imports by flutter
    # but it might be nice to have them symlinked into /usr/local/bin
    # bin.install File.join(prefix, "bin/cache/dart-sdk/bin/dart")
    # bin.install File.join(prefix, "bin/cache/dart-sdk/bin/pub")
  end

  def post_install
    rm File.join(HOMEBREW_PREFIX, "bin", "flutter.bat")
    chmod_R "+rwx", File.join(prefix, "bin"), :verbose => true

    # maybe we should run "flutter packages get" to download dependencies
  end

  test do
    system "false"
  end
end
