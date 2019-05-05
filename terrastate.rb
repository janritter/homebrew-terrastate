# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://www.rubydoc.info/github/Homebrew/brew/master/Formula

class Terrastate < Formula
    desc "Tool to manage multiple state backends in Terraform - Allows Multi account setups"
    if OS.mac?
      url "https://github.com/janritter/terrastate/releases/download/1.2.0/darwin_amd64_terrastate"
      sha256 "ab5dbf3c3acb614fcbc7d7ca0be7125a82e1555aad8f78dceb9926d55507f70d"
    elsif OS.linux?
      url "https://github.com/janritter/terrastate/releases/download/1.2.0/linux_amd64_terrastate"
      sha256 "00df23b18151f6dfbbbe6cefa8f61f28ba02dd997f0940800a9ebc506807a202"
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