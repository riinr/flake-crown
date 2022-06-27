{
  description = ''Yet another raylib Nim wrapper'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-naylib-v1_0_0.flake = false;
  inputs.src-naylib-v1_0_0.owner = "planetis-m";
  inputs.src-naylib-v1_0_0.ref   = "refs/tags/v1.0.0";
  inputs.src-naylib-v1_0_0.repo  = "naylib";
  inputs.src-naylib-v1_0_0.type  = "github";
  
  inputs."eminim".owner = "nim-nix-pkgs";
  inputs."eminim".ref   = "master";
  inputs."eminim".repo  = "eminim";
  inputs."eminim".type  = "github";
  inputs."eminim".inputs.nixpkgs.follows = "nixpkgs";
  inputs."eminim".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-naylib-v1_0_0"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-naylib-v1_0_0";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}