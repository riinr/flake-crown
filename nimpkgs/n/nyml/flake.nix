{
  description = ''Stupid simple YAML-like implementation from YAML to JsonNode'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."nyml-main".dir   = "main";
  inputs."nyml-main".owner = "nim-nix-pkgs";
  inputs."nyml-main".ref   = "master";
  inputs."nyml-main".repo  = "nyml";
  inputs."nyml-main".type  = "github";
  inputs."nyml-main".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nyml-main".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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