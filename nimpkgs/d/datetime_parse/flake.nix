{
  description = ''parse datetime from various resources'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."datetime_parse-master".dir   = "master";
  inputs."datetime_parse-master".owner = "nim-nix-pkgs";
  inputs."datetime_parse-master".ref   = "master";
  inputs."datetime_parse-master".repo  = "datetime_parse";
  inputs."datetime_parse-master".type  = "github";
  inputs."datetime_parse-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."datetime_parse-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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