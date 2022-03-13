{
  description = ''Time travelling for Nim'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."timecop-master".dir   = "master";
  inputs."timecop-master".owner = "nim-nix-pkgs";
  inputs."timecop-master".ref   = "master";
  inputs."timecop-master".repo  = "timecop";
  inputs."timecop-master".type  = "github";
  inputs."timecop-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."timecop-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."timecop-0_1_0".dir   = "0_1_0";
  inputs."timecop-0_1_0".owner = "nim-nix-pkgs";
  inputs."timecop-0_1_0".ref   = "master";
  inputs."timecop-0_1_0".repo  = "timecop";
  inputs."timecop-0_1_0".type  = "github";
  inputs."timecop-0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."timecop-0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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