# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://www.rubydoc.info/github/Homebrew/brew/master/Formula

class Terrastate < Formula
    desc "Tool to manage multiple state backends in Terraform - Allows Multi account setups"
    if OS.mac?
      url "https://github.com/janritter/terrastate/releases/download/1.4.0/darwin_amd64_terrastate"
      sha256 "3c8f23770434975cea134e0d69dfc7e5243bf328b6fb65fc7735d04922b2475c"
      version "1.4.0"
    elsif OS.linux?
      url "https://github.com/janritter/terrastate/releases/download/1.4.0/linux_amd64_terrastate"
      sha256 "4da8067dba23feb921a01a82889764c60f2bc66509ecbf12b3b52d7786003800"
      version "1.4.0"
    end

    def install
      if OS.mac?
        bin.install "darwin_amd64_terrastate"
        mv bin/"darwin_amd64_terrastate", bin/"terrastate"
      elsif OS.linux?
        bin.install "linux_amd64_terrastate"
        mv bin/"linux_amd64_terrastate", bin/"terrastate"
      end
    end
  
    test do
      system "false"
    end
  end