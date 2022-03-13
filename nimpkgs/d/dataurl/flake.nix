{
  description = ''Easily create data urls! CLI included'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."dataurl-master".dir   = "master";
  inputs."dataurl-master".owner = "nim-nix-pkgs";
  inputs."dataurl-master".ref   = "master";
  inputs."dataurl-master".repo  = "dataurl";
  inputs."dataurl-master".type  = "github";
  inputs."dataurl-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."dataurl-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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