{
  description = ''IKEA Home Smart library to monitor and control lights through the IKEA Gateway'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."ikeahomesmart-master".dir   = "master";
  inputs."ikeahomesmart-master".owner = "nim-nix-pkgs";
  inputs."ikeahomesmart-master".ref   = "master";
  inputs."ikeahomesmart-master".repo  = "ikeahomesmart";
  inputs."ikeahomesmart-master".type  = "github";
  inputs."ikeahomesmart-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ikeahomesmart-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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