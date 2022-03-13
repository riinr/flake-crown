{
  description = ''cjson wrapper for Nim'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."nim_cjson-master".dir   = "master";
  inputs."nim_cjson-master".owner = "nim-nix-pkgs";
  inputs."nim_cjson-master".ref   = "master";
  inputs."nim_cjson-master".repo  = "nim_cjson";
  inputs."nim_cjson-master".type  = "github";
  inputs."nim_cjson-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nim_cjson-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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