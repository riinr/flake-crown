{
  description = ''TIC-80 bindings'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."tic80-master".dir   = "master";
  inputs."tic80-master".owner = "nim-nix-pkgs";
  inputs."tic80-master".ref   = "master";
  inputs."tic80-master".repo  = "tic80";
  inputs."tic80-master".type  = "github";
  inputs."tic80-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."tic80-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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