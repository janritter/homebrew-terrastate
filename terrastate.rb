# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://www.rubydoc.info/github/Homebrew/brew/master/Formula

class Terrastate < Formula
    desc "Tool to manage multiple state backends in Terraform - Allows Multi account setups"
    if OS.mac?
      url "https://github.com/janritter/terrastate/releases/download/1.6.1/darwin_amd64_terrastate"
      sha256 "d34118ffddaa52ca174fa1f2aa7d8e444c647a02e2189c9980fa96f94ed99ad5"
      version "1.6.1"
    elsif OS.linux?
      url "https://github.com/janritter/terrastate/releases/download/1.6.1/linux_amd64_terrastate"
      sha256 "5331286c9870f899b321294b5a2f56248859da3aaf800cc7216aab115b53eaa0"
      version "1.6.1"
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