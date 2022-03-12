{
  description = ''PCRE wrapper for Nim'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."nimpcre-master".url = "path:./master";
  inputs."nimpcre-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimpcre-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimpcre-v0_1_0".url = "path:./v0_1_0";
  inputs."nimpcre-v0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimpcre-v0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimpcre-v0_1_1".url = "path:./v0_1_1";
  inputs."nimpcre-v0_1_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimpcre-v0_1_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimpcre-v0_1_2".url = "path:./v0_1_2";
  inputs."nimpcre-v0_1_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimpcre-v0_1_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimpcre-v0_1_3".url = "path:./v0_1_3";
  inputs."nimpcre-v0_1_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimpcre-v0_1_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimpcre-v0_1_4".url = "path:./v0_1_4";
  inputs."nimpcre-v0_1_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimpcre-v0_1_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimpcre-v0_2_0".url = "path:./v0_2_0";
  inputs."nimpcre-v0_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimpcre-v0_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimpcre-v0_2_1".url = "path:./v0_2_1";
  inputs."nimpcre-v0_2_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimpcre-v0_2_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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