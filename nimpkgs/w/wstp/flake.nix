{
  description = ''Nim bindings for WSTP'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."wstp-master".dir   = "master";
  inputs."wstp-master".owner = "nim-nix-pkgs";
  inputs."wstp-master".ref   = "master";
  inputs."wstp-master".repo  = "wstp";
  inputs."wstp-master".type  = "github";
  inputs."wstp-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."wstp-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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