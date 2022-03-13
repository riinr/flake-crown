{
  description = ''Use a Structure of Arrays like an Array of Structures'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."aossoa-master".dir   = "master";
  inputs."aossoa-master".owner = "nim-nix-pkgs";
  inputs."aossoa-master".ref   = "master";
  inputs."aossoa-master".repo  = "aossoa";
  inputs."aossoa-master".type  = "github";
  inputs."aossoa-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."aossoa-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."aossoa-v0_1_0".dir   = "v0_1_0";
  inputs."aossoa-v0_1_0".owner = "nim-nix-pkgs";
  inputs."aossoa-v0_1_0".ref   = "master";
  inputs."aossoa-v0_1_0".repo  = "aossoa";
  inputs."aossoa-v0_1_0".type  = "github";
  inputs."aossoa-v0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."aossoa-v0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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