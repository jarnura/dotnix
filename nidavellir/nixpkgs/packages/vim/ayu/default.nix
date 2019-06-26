{ pkgs }:

with pkgs;

vimUtils.buildVimPlugin {
  pname = "ayu";
  version = "4c418ff99fe898121643bf60cc0d9752c31c2937";
  src = fetchFromGitHub {
    "owner" = "ayu-theme";
    "repo" = "ayu-vim";
    "rev" = "4c418ff99fe898121643bf60cc0d9752c31c2937";
    "sha256" = "0qfajz5g9fi65wkshyhcbcvqhbg7pgiirnazy1875nk3537kwl4z";
  };
}
