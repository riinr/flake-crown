{
  description = ''libarchive wrapper for Nim'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-nimarchive-v0_4_1.flake = false;
  inputs.src-nimarchive-v0_4_1.owner = "genotrance";
  inputs.src-nimarchive-v0_4_1.ref   = "refs/tags/v0.4.1";
  inputs.src-nimarchive-v0_4_1.repo  = "nimarchive";
  inputs.src-nimarchive-v0_4_1.type  = "github";
  
  inputs."nimterop".owner = "nim-nix-pkgs";
  inputs."nimterop".ref   = "master";
  inputs."nimterop".repo  = "nimterop";
  inputs."nimterop".type  = "github";
  inputs."nimterop".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimterop".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-nimarchive-v0_4_1"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-nimarchive-v0_4_1";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}