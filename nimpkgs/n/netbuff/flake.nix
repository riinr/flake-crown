{
  description = ''Fast and unsafe byte buffering for intensive network data transfer.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."netbuff-main".dir   = "main";
  inputs."netbuff-main".owner = "nim-nix-pkgs";
  inputs."netbuff-main".ref   = "master";
  inputs."netbuff-main".repo  = "netbuff";
  inputs."netbuff-main".type  = "github";
  inputs."netbuff-main".inputs.nixpkgs.follows = "nixpkgs";
  inputs."netbuff-main".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."netbuff-v0_1_0".dir   = "v0_1_0";
  inputs."netbuff-v0_1_0".owner = "nim-nix-pkgs";
  inputs."netbuff-v0_1_0".ref   = "master";
  inputs."netbuff-v0_1_0".repo  = "netbuff";
  inputs."netbuff-v0_1_0".type  = "github";
  inputs."netbuff-v0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."netbuff-v0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."netbuff-v0_1_1".dir   = "v0_1_1";
  inputs."netbuff-v0_1_1".owner = "nim-nix-pkgs";
  inputs."netbuff-v0_1_1".ref   = "master";
  inputs."netbuff-v0_1_1".repo  = "netbuff";
  inputs."netbuff-v0_1_1".type  = "github";
  inputs."netbuff-v0_1_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."netbuff-v0_1_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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