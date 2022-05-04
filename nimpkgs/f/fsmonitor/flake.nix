{
  description = ''The ex-stdlib module fsmonitor.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."fsmonitor-master".dir   = "master";
  inputs."fsmonitor-master".owner = "nim-nix-pkgs";
  inputs."fsmonitor-master".ref   = "master";
  inputs."fsmonitor-master".repo  = "fsmonitor";
  inputs."fsmonitor-master".type  = "github";
  inputs."fsmonitor-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."fsmonitor-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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