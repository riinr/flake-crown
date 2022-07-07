{
  description = ''Fetch fushinsha serif data and save as csv files'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."fushin-master".dir   = "master";
  inputs."fushin-master".owner = "nim-nix-pkgs";
  inputs."fushin-master".ref   = "master";
  inputs."fushin-master".repo  = "fushin";
  inputs."fushin-master".type  = "github";
  inputs."fushin-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."fushin-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."fushin-v0_0_0".dir   = "v0_0_0";
  inputs."fushin-v0_0_0".owner = "nim-nix-pkgs";
  inputs."fushin-v0_0_0".ref   = "master";
  inputs."fushin-v0_0_0".repo  = "fushin";
  inputs."fushin-v0_0_0".type  = "github";
  inputs."fushin-v0_0_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."fushin-v0_0_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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