{
  description = ''Simple database generator, connector and query tools.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."zfdbms-main".dir   = "main";
  inputs."zfdbms-main".owner = "nim-nix-pkgs";
  inputs."zfdbms-main".ref   = "master";
  inputs."zfdbms-main".repo  = "zfdbms";
  inputs."zfdbms-main".type  = "github";
  inputs."zfdbms-main".inputs.nixpkgs.follows = "nixpkgs";
  inputs."zfdbms-main".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."zfdbms-v0,0,8".dir   = "v0,0,8";
  inputs."zfdbms-v0,0,8".owner = "nim-nix-pkgs";
  inputs."zfdbms-v0,0,8".ref   = "master";
  inputs."zfdbms-v0,0,8".repo  = "zfdbms";
  inputs."zfdbms-v0,0,8".type  = "github";
  inputs."zfdbms-v0,0,8".inputs.nixpkgs.follows = "nixpkgs";
  inputs."zfdbms-v0,0,8".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."zfdbms-v0_0_1".dir   = "v0_0_1";
  inputs."zfdbms-v0_0_1".owner = "nim-nix-pkgs";
  inputs."zfdbms-v0_0_1".ref   = "master";
  inputs."zfdbms-v0_0_1".repo  = "zfdbms";
  inputs."zfdbms-v0_0_1".type  = "github";
  inputs."zfdbms-v0_0_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."zfdbms-v0_0_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."zfdbms-v0_0_2".dir   = "v0_0_2";
  inputs."zfdbms-v0_0_2".owner = "nim-nix-pkgs";
  inputs."zfdbms-v0_0_2".ref   = "master";
  inputs."zfdbms-v0_0_2".repo  = "zfdbms";
  inputs."zfdbms-v0_0_2".type  = "github";
  inputs."zfdbms-v0_0_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."zfdbms-v0_0_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."zfdbms-v0_0_3".dir   = "v0_0_3";
  inputs."zfdbms-v0_0_3".owner = "nim-nix-pkgs";
  inputs."zfdbms-v0_0_3".ref   = "master";
  inputs."zfdbms-v0_0_3".repo  = "zfdbms";
  inputs."zfdbms-v0_0_3".type  = "github";
  inputs."zfdbms-v0_0_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."zfdbms-v0_0_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."zfdbms-v0_0_4".dir   = "v0_0_4";
  inputs."zfdbms-v0_0_4".owner = "nim-nix-pkgs";
  inputs."zfdbms-v0_0_4".ref   = "master";
  inputs."zfdbms-v0_0_4".repo  = "zfdbms";
  inputs."zfdbms-v0_0_4".type  = "github";
  inputs."zfdbms-v0_0_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."zfdbms-v0_0_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."zfdbms-v0_0_5".dir   = "v0_0_5";
  inputs."zfdbms-v0_0_5".owner = "nim-nix-pkgs";
  inputs."zfdbms-v0_0_5".ref   = "master";
  inputs."zfdbms-v0_0_5".repo  = "zfdbms";
  inputs."zfdbms-v0_0_5".type  = "github";
  inputs."zfdbms-v0_0_5".inputs.nixpkgs.follows = "nixpkgs";
  inputs."zfdbms-v0_0_5".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."zfdbms-v0_0_6".dir   = "v0_0_6";
  inputs."zfdbms-v0_0_6".owner = "nim-nix-pkgs";
  inputs."zfdbms-v0_0_6".ref   = "master";
  inputs."zfdbms-v0_0_6".repo  = "zfdbms";
  inputs."zfdbms-v0_0_6".type  = "github";
  inputs."zfdbms-v0_0_6".inputs.nixpkgs.follows = "nixpkgs";
  inputs."zfdbms-v0_0_6".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."zfdbms-v0_0_7".dir   = "v0_0_7";
  inputs."zfdbms-v0_0_7".owner = "nim-nix-pkgs";
  inputs."zfdbms-v0_0_7".ref   = "master";
  inputs."zfdbms-v0_0_7".repo  = "zfdbms";
  inputs."zfdbms-v0_0_7".type  = "github";
  inputs."zfdbms-v0_0_7".inputs.nixpkgs.follows = "nixpkgs";
  inputs."zfdbms-v0_0_7".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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