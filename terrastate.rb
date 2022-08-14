# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://www.rubydoc.info/github/Homebrew/brew/master/Formula

class Terrastate < Formula
    desc "Tool to manage multiple state backends in Terraform - Allows Multi account setups"
    if OS.mac?
      url "https://github.com/janritter/terrastate/releases/download/1.11.2/darwin_amd64_terrastate"
      sha256 "665e8fd9001b47dffbf180c21cf097f8719f81427191f06cf1c42b68468c386e"
      version "1.11.2"
    elsif OS.linux?
      url "https://github.com/janritter/terrastate/releases/download/1.11.2/linux_amd64_terrastate"
      sha256 "338ec75202a735df58b2864624f6e5f7252157eefa3d3e07ab9a156a6d8e9a8a"
      version "1.11.2"
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