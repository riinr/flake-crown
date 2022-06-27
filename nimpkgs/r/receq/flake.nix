{
  description = ''Operator for comparing any recursive ref object'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."receq-main".dir   = "main";
  inputs."receq-main".owner = "nim-nix-pkgs";
  inputs."receq-main".ref   = "master";
  inputs."receq-main".repo  = "receq";
  inputs."receq-main".type  = "github";
  inputs."receq-main".inputs.nixpkgs.follows = "nixpkgs";
  inputs."receq-main".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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