{
  description = ''Easy and fast generator for valid json in nim'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."json_builder-master".dir   = "master";
  inputs."json_builder-master".owner = "nim-nix-pkgs";
  inputs."json_builder-master".ref   = "master";
  inputs."json_builder-master".repo  = "json_builder";
  inputs."json_builder-master".type  = "github";
  inputs."json_builder-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."json_builder-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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