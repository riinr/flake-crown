{
  description = ''A fork of John Novak (john@johnnovak.net)'s illwill package that is less safe numbers wise'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."illwill_unsafe-master".dir   = "master";
  inputs."illwill_unsafe-master".owner = "nim-nix-pkgs";
  inputs."illwill_unsafe-master".ref   = "master";
  inputs."illwill_unsafe-master".repo  = "illwill_unsafe";
  inputs."illwill_unsafe-master".type  = "github";
  inputs."illwill_unsafe-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."illwill_unsafe-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."illwill-0_1_0".dir   = "0_1_0";
  inputs."illwill-0_1_0".owner = "nim-nix-pkgs";
  inputs."illwill-0_1_0".ref   = "master";
  inputs."illwill-0_1_0".repo  = "illwill";
  inputs."illwill-0_1_0".type  = "github";
  inputs."illwill-0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."illwill-0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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