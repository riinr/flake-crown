{
  description = ''semaphores gone wild'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."semaphores-master".dir   = "master";
  inputs."semaphores-master".owner = "nim-nix-pkgs";
  inputs."semaphores-master".ref   = "master";
  inputs."semaphores-master".repo  = "semaphores";
  inputs."semaphores-master".type  = "github";
  inputs."semaphores-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."semaphores-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."semaphores-0_0_1".dir   = "0_0_1";
  inputs."semaphores-0_0_1".owner = "nim-nix-pkgs";
  inputs."semaphores-0_0_1".ref   = "master";
  inputs."semaphores-0_0_1".repo  = "semaphores";
  inputs."semaphores-0_0_1".type  = "github";
  inputs."semaphores-0_0_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."semaphores-0_0_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."semaphores-0_0_2".dir   = "0_0_2";
  inputs."semaphores-0_0_2".owner = "nim-nix-pkgs";
  inputs."semaphores-0_0_2".ref   = "master";
  inputs."semaphores-0_0_2".repo  = "semaphores";
  inputs."semaphores-0_0_2".type  = "github";
  inputs."semaphores-0_0_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."semaphores-0_0_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."semaphores-0_0_3".dir   = "0_0_3";
  inputs."semaphores-0_0_3".owner = "nim-nix-pkgs";
  inputs."semaphores-0_0_3".ref   = "master";
  inputs."semaphores-0_0_3".repo  = "semaphores";
  inputs."semaphores-0_0_3".type  = "github";
  inputs."semaphores-0_0_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."semaphores-0_0_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."semaphores-0_0_4".dir   = "0_0_4";
  inputs."semaphores-0_0_4".owner = "nim-nix-pkgs";
  inputs."semaphores-0_0_4".ref   = "master";
  inputs."semaphores-0_0_4".repo  = "semaphores";
  inputs."semaphores-0_0_4".type  = "github";
  inputs."semaphores-0_0_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."semaphores-0_0_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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