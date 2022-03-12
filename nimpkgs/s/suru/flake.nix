{
  description = ''A tqdm-style progress bar in Nim'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."suru-master".url = "path:./master";
  inputs."suru-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."suru-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."suru-v0_3_0".url = "path:./v0_3_0";
  inputs."suru-v0_3_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."suru-v0_3_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."suru-v0_3_1".url = "path:./v0_3_1";
  inputs."suru-v0_3_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."suru-v0_3_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib"]
  in lib.mkProjectOutput {
    inherit self nixpkgs;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
    refs = builtins.removeAttrs inputs args;
  };
}