{
  description = ''Hi Fidelity Rendering Engine'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."nimagg-master".dir   = "master";
  inputs."nimagg-master".owner = "nim-nix-pkgs";
  inputs."nimagg-master".ref   = "master";
  inputs."nimagg-master".repo  = "nimagg";
  inputs."nimagg-master".type  = "github";
  inputs."nimagg-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimagg-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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