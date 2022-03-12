{
  description = ''A super-fast epoll-backed and parallel HTTP server.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."httpx-master".url = "path:./master";
  inputs."httpx-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."httpx-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."httpx-v0_1_0".url = "path:./v0_1_0";
  inputs."httpx-v0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."httpx-v0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."httpx-v0_1_2".url = "path:./v0_1_2";
  inputs."httpx-v0_1_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."httpx-v0_1_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."httpx-v0_1_4".url = "path:./v0_1_4";
  inputs."httpx-v0_1_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."httpx-v0_1_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."httpx-v0_1_6".url = "path:./v0_1_6";
  inputs."httpx-v0_1_6".inputs.nixpkgs.follows = "nixpkgs";
  inputs."httpx-v0_1_6".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."httpx-v0_1_8".url = "path:./v0_1_8";
  inputs."httpx-v0_1_8".inputs.nixpkgs.follows = "nixpkgs";
  inputs."httpx-v0_1_8".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."httpx-v0_2_0".url = "path:./v0_2_0";
  inputs."httpx-v0_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."httpx-v0_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."httpx-v0_2_2".url = "path:./v0_2_2";
  inputs."httpx-v0_2_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."httpx-v0_2_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."httpx-v0_2_4".url = "path:./v0_2_4";
  inputs."httpx-v0_2_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."httpx-v0_2_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."httpx-v0_2_6".url = "path:./v0_2_6";
  inputs."httpx-v0_2_6".inputs.nixpkgs.follows = "nixpkgs";
  inputs."httpx-v0_2_6".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."httpx-v0_2_8".url = "path:./v0_2_8";
  inputs."httpx-v0_2_8".inputs.nixpkgs.follows = "nixpkgs";
  inputs."httpx-v0_2_8".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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