{
  description = ''Spurdification library and CLI'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."spurdify-master".dir   = "master";
  inputs."spurdify-master".owner = "nim-nix-pkgs";
  inputs."spurdify-master".ref   = "master";
  inputs."spurdify-master".repo  = "spurdify";
  inputs."spurdify-master".type  = "github";
  inputs."spurdify-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."spurdify-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."spurdify-0_0_2".dir   = "0_0_2";
  inputs."spurdify-0_0_2".owner = "nim-nix-pkgs";
  inputs."spurdify-0_0_2".ref   = "master";
  inputs."spurdify-0_0_2".repo  = "spurdify";
  inputs."spurdify-0_0_2".type  = "github";
  inputs."spurdify-0_0_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."spurdify-0_0_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."spurdify-v0_0_4".dir   = "v0_0_4";
  inputs."spurdify-v0_0_4".owner = "nim-nix-pkgs";
  inputs."spurdify-v0_0_4".ref   = "master";
  inputs."spurdify-v0_0_4".repo  = "spurdify";
  inputs."spurdify-v0_0_4".type  = "github";
  inputs."spurdify-v0_0_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."spurdify-v0_0_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."spurdify-v0_0_5".dir   = "v0_0_5";
  inputs."spurdify-v0_0_5".owner = "nim-nix-pkgs";
  inputs."spurdify-v0_0_5".ref   = "master";
  inputs."spurdify-v0_0_5".repo  = "spurdify";
  inputs."spurdify-v0_0_5".type  = "github";
  inputs."spurdify-v0_0_5".inputs.nixpkgs.follows = "nixpkgs";
  inputs."spurdify-v0_0_5".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."spurdify-v0_0_6".dir   = "v0_0_6";
  inputs."spurdify-v0_0_6".owner = "nim-nix-pkgs";
  inputs."spurdify-v0_0_6".ref   = "master";
  inputs."spurdify-v0_0_6".repo  = "spurdify";
  inputs."spurdify-v0_0_6".type  = "github";
  inputs."spurdify-v0_0_6".inputs.nixpkgs.follows = "nixpkgs";
  inputs."spurdify-v0_0_6".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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