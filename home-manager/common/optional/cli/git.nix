{
  programs.git = {
    enable = true;
    userName = "Roman Filipenko";
    userEmail = "rfilipenko@optimanalytics.com";
    extraConfig = {
      feature.manyFiles = true;
      init.defaultBranch = "main";
      user.signing.key = "21C63BA030B14CF9";
      commit.gpgSign = true;
    };
    lfs.enable = true;
    ignores = [ ".direnv" "result" ];
  };
}
