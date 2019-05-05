# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://www.rubydoc.info/github/Homebrew/brew/master/Formula

class Terrastate < Formula
    desc "Tool to manage multiple state backends in Terraform - Allows Multi account setups"
    if OS.mac?
      url "https://github.com/janritter/terrastate/releases/download/1.2.0/darwin_amd64_terrastate"
      sha256 "fe22095fffbcc177a9184c815f169fcc5e8e0511f622d7e669e30a8333ca92a5"
    elsif OS.linux?
      url "https://github.com/janritter/terrastate/releases/download/1.2.0/linux_amd64_terrastate"
      sha256 "f88dadb4b950350ce458a5a52ed3c2e315219923aa5fea0480a7841f597995d7"
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