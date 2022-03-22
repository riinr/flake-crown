{
  description = ''a tiny tool to bump nimble versions'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-bump-1_8_14.flake = false;
  inputs.src-bump-1_8_14.owner = "disruptek";
  inputs.src-bump-1_8_14.ref   = "1_8_14";
  inputs.src-bump-1_8_14.repo  = "bump";
  inputs.src-bump-1_8_14.type  = "github";
  
  inputs."cligen".owner = "nim-nix-pkgs";
  inputs."cligen".ref   = "master";
  inputs."cligen".repo  = "cligen";
  inputs."cligen".dir   = "v1_5_22";
  inputs."cligen".type  = "github";
  inputs."cligen".inputs.nixpkgs.follows = "nixpkgs";
  inputs."cligen".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."git://github.com/disruptek/cutelog.git".owner = "nim-nix-pkgs";
  inputs."git://github.com/disruptek/cutelog.git".ref   = "master";
  inputs."git://github.com/disruptek/cutelog.git".repo  = "git://github.com/disruptek/cutelog.git";
  inputs."git://github.com/disruptek/cutelog.git".dir   = "";
  inputs."git://github.com/disruptek/cutelog.git".type  = "github";
  inputs."git://github.com/disruptek/cutelog.git".inputs.nixpkgs.follows = "nixpkgs";
  inputs."git://github.com/disruptek/cutelog.git".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-bump-1_8_14"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-bump-1_8_14";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}