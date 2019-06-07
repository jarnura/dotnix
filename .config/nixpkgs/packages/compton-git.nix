self: super:
{
  compton-git = super.compton-git.overrideAttrs(attrs: {
    version = "Next";
    src = self.fetchFromGitHub {
      owner = "yshui";
      repo = "compton";
      rev = "vNext";
      sha256 = "01i2b8p1wxrfnimy342q32xd884y5ynyxx53xivh6hpnji0kbbdn";
    };
  });
}
