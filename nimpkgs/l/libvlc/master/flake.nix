{
  description = ''libvlc bindings for Nim'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-libvlc-master.flake = false;
  inputs.src-libvlc-master.ref   = "refs/heads/master";
  inputs.src-libvlc-master.owner = "Yardanico";
  inputs.src-libvlc-master.repo  = "nim-libvlc";
  inputs.src-libvlc-master.type  = "github";
  
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
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-libvlc-master"];
    over = if builtins.pathExists ./override.nix 
           then { override = import ./override.nix; }
           else { };
  in lib.mkRefOutput (over // {
    inherit self nixpkgs ;
    src  = deps."src-libvlc-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  } );
}