# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://www.rubydoc.info/github/Homebrew/brew/master/Formula

class Terrastate < Formula
    desc "Tool to manage multiple state backends in Terraform - Allows Multi account setups"
    if OS.mac?
      url "https://github.com/janritter/terrastate/releases/download/1.9.0/darwin_amd64_terrastate"
      sha256 "b00ca302c5290d419f39b9904b108872c6c6a9ad477a8563c85895f38ee24b32"
      version "1.9.0"
    elsif OS.linux?
      url "https://github.com/janritter/terrastate/releases/download/1.9.0/linux_amd64_terrastate"
      sha256 "d2adde18f6a9c2661540ff52da8b601603cefc2972a07a95c6969f9433498178"
      version "1.9.0"
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