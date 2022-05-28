{
  description = ''libvlc bindings for Nim'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-libvlc-0_2.flake = false;
  inputs.src-libvlc-0_2.ref   = "refs/tags/0.2";
  inputs.src-libvlc-0_2.owner = "Yardanico";
  inputs.src-libvlc-0_2.repo  = "nim-libvlc";
  inputs.src-libvlc-0_2.type  = "github";
  
  inputs."futhark".owner = "nim-nix-pkgs";
  inputs."futhark".ref   = "master";
  inputs."futhark".repo  = "futhark";
  inputs."futhark".dir   = "v0_6_1";
  inputs."futhark".type  = "github";
  inputs."futhark".inputs.nixpkgs.follows = "nixpkgs";
  inputs."futhark".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-libvlc-0_2"];
    over = if builtins.pathExists ./override.nix 
           then { override = import ./override.nix; }
           else { };
  in lib.mkRefOutput (over // {
    inherit self nixpkgs ;
    src  = deps."src-libvlc-0_2";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  } );
}