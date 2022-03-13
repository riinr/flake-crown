{
  description = ''glue code generator to bind Nim and Lua together using Nim's powerful macro'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."nimlua-master".dir   = "master";
  inputs."nimlua-master".owner = "nim-nix-pkgs";
  inputs."nimlua-master".ref   = "master";
  inputs."nimlua-master".repo  = "nimlua";
  inputs."nimlua-master".type  = "github";
  inputs."nimlua-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimlua-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimlua-v0_3_8".dir   = "v0_3_8";
  inputs."nimlua-v0_3_8".owner = "nim-nix-pkgs";
  inputs."nimlua-v0_3_8".ref   = "master";
  inputs."nimlua-v0_3_8".repo  = "nimlua";
  inputs."nimlua-v0_3_8".type  = "github";
  inputs."nimlua-v0_3_8".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimlua-v0_3_8".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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