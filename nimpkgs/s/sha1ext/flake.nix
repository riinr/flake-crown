{
  description = ''std / sha1 extension'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."sha1ext-develop".url = "path:./develop";
  inputs."sha1ext-develop".inputs.nixpkgs.follows = "nixpkgs";
  inputs."sha1ext-develop".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."sha1ext-master".url = "path:./master";
  inputs."sha1ext-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."sha1ext-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."sha1ext-v0_1".url = "path:./v0_1";
  inputs."sha1ext-v0_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."sha1ext-v0_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."sha1ext-v0_1_1".url = "path:./v0_1_1";
  inputs."sha1ext-v0_1_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."sha1ext-v0_1_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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