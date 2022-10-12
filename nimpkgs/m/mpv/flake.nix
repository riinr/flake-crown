{
  description = ''Nim bindings for libmpv'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."mpv-master".dir   = "master";
  inputs."mpv-master".owner = "nim-nix-pkgs";
  inputs."mpv-master".ref   = "master";
  inputs."mpv-master".repo  = "mpv";
  inputs."mpv-master".type  = "github";
  inputs."mpv-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."mpv-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib"];
  in lib.mkProjectOutput {
    inherit self nixpkgs;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
    refs = builtins.removeAttrs inputs args;
  };
}