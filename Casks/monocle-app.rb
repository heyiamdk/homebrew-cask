cask "monocle-app" do
  version "3.0"
  sha256 "50f19a490e7874d261216c52b19d7dce1d8addbad97015782598f4c6b22c58fd"

  url "https://heyiam.dk/updates/monocle/Monocle-3-0.zip"
  name "Monocle"
  desc "Noise-cancelling for your screen. A modern take on window dimming for macOS."
  homepage "http://monocle.heyiam.dk"

  preflight do
    # Move the app from the nested folder to the expected location
    FileUtils.mv "#{staged_path}/Monocle-3-0/Monocle.app", "#{staged_path}/Monocle.app"
  end

  app "Monocle.app"

  zap trash: [
    "~/Library/Group Containers/com.monocle.settings",
    "~/Library/Preferences/dk.heyiam.monocle.plist",
    "~/Library/Application Support/Monocle",
  ]
end

