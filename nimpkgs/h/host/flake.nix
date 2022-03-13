{
  description = ''A program to staticlly host files or directories over HTTP'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."host-master".dir   = "master";
  inputs."host-master".owner = "nim-nix-pkgs";
  inputs."host-master".ref   = "master";
  inputs."host-master".repo  = "host";
  inputs."host-master".type  = "github";
  inputs."host-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."host-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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