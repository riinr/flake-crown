{
  description = ''Generating structured data from arbitrary, unstructured input.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."arbitrary-main".dir   = "main";
  inputs."arbitrary-main".owner = "nim-nix-pkgs";
  inputs."arbitrary-main".ref   = "master";
  inputs."arbitrary-main".repo  = "arbitrary";
  inputs."arbitrary-main".type  = "github";
  inputs."arbitrary-main".inputs.nixpkgs.follows = "nixpkgs";
  inputs."arbitrary-main".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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