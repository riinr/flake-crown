{
  description = ''Bindings for zstd'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."zstd-develop".url = "path:./develop";
  inputs."zstd-develop".inputs.nixpkgs.follows = "nixpkgs";
  inputs."zstd-develop".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."zstd-master".url = "path:./master";
  inputs."zstd-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."zstd-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."zstd-v0_2".url = "path:./v0_2";
  inputs."zstd-v0_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."zstd-v0_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."zstd-v0_3".url = "path:./v0_3";
  inputs."zstd-v0_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."zstd-v0_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."zstd-v0_4".url = "path:./v0_4";
  inputs."zstd-v0_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."zstd-v0_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."zstd-v0_5".url = "path:./v0_5";
  inputs."zstd-v0_5".inputs.nixpkgs.follows = "nixpkgs";
  inputs."zstd-v0_5".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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