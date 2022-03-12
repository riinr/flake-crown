{
  description = ''Collection of helper utilities'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-hmisc-v0_13_1.flake = false;
  inputs.src-hmisc-v0_13_1.owner = "haxscramper";
  inputs.src-hmisc-v0_13_1.ref   = "refs/tags/v0.13.1";
  inputs.src-hmisc-v0_13_1.repo  = "hmisc";
  inputs.src-hmisc-v0_13_1.type  = "github";
  
  inputs."https://github.com/nim-lang/fusion.git".owner = "nim-nix-pkgs";
  inputs."https://github.com/nim-lang/fusion.git".ref   = "master";
  inputs."https://github.com/nim-lang/fusion.git".repo  = "https://github.com/nim-lang/fusion.git";
  inputs."https://github.com/nim-lang/fusion.git".type  = "github";
  inputs."https://github.com/nim-lang/fusion.git".inputs.nixpkgs.follows = "nixpkgs";
  inputs."https://github.com/nim-lang/fusion.git".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."benchy".owner = "nim-nix-pkgs";
  inputs."benchy".ref   = "master";
  inputs."benchy".repo  = "benchy";
  inputs."benchy".type  = "github";
  inputs."benchy".inputs.nixpkgs.follows = "nixpkgs";
  inputs."benchy".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."jsony".owner = "nim-nix-pkgs";
  inputs."jsony".ref   = "master";
  inputs."jsony".repo  = "jsony";
  inputs."jsony".type  = "github";
  inputs."jsony".inputs.nixpkgs.follows = "nixpkgs";
  inputs."jsony".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."unicodedb".owner = "nim-nix-pkgs";
  inputs."unicodedb".ref   = "master";
  inputs."unicodedb".repo  = "unicodedb";
  inputs."unicodedb".type  = "github";
  inputs."unicodedb".inputs.nixpkgs.follows = "nixpkgs";
  inputs."unicodedb".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-hmisc-v0_13_1"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-hmisc-v0_13_1";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}