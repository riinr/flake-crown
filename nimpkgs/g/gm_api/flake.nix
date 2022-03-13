{
  description = ''Bindings for Greasemonkey API and an userscript header generator'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."gm_api-master".dir   = "master";
  inputs."gm_api-master".owner = "nim-nix-pkgs";
  inputs."gm_api-master".ref   = "master";
  inputs."gm_api-master".repo  = "gm_api";
  inputs."gm_api-master".type  = "github";
  inputs."gm_api-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."gm_api-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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