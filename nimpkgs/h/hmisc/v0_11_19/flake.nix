{
  description = ''Collection of helper utilities'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-hmisc-v0_11_19.flake = false;
  inputs.src-hmisc-v0_11_19.owner = "haxscramper";
  inputs.src-hmisc-v0_11_19.ref   = "v0_11_19";
  inputs.src-hmisc-v0_11_19.repo  = "hmisc";
  inputs.src-hmisc-v0_11_19.type  = "github";
  
  inputs."fusion".owner = "nim-nix-pkgs";
  inputs."fusion".ref   = "master";
  inputs."fusion".repo  = "fusion";
  inputs."fusion".dir   = "v1_1";
  inputs."fusion".type  = "github";
  inputs."fusion".inputs.nixpkgs.follows = "nixpkgs";
  inputs."fusion".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."benchy".owner = "nim-nix-pkgs";
  inputs."benchy".ref   = "master";
  inputs."benchy".repo  = "benchy";
  inputs."benchy".dir   = "";
  inputs."benchy".type  = "github";
  inputs."benchy".inputs.nixpkgs.follows = "nixpkgs";
  inputs."benchy".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."jsony".owner = "nim-nix-pkgs";
  inputs."jsony".ref   = "master";
  inputs."jsony".repo  = "jsony";
  inputs."jsony".dir   = "1_1_3";
  inputs."jsony".type  = "github";
  inputs."jsony".inputs.nixpkgs.follows = "nixpkgs";
  inputs."jsony".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-hmisc-v0_11_19"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-hmisc-v0_11_19";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}