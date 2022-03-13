{
  description = ''Flexible JSON manshal/unmarshal library for nim'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."jdec-develop".dir   = "develop";
  inputs."jdec-develop".owner = "nim-nix-pkgs";
  inputs."jdec-develop".ref   = "master";
  inputs."jdec-develop".repo  = "jdec";
  inputs."jdec-develop".type  = "github";
  inputs."jdec-develop".inputs.nixpkgs.follows = "nixpkgs";
  inputs."jdec-develop".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."jdec-master".dir   = "master";
  inputs."jdec-master".owner = "nim-nix-pkgs";
  inputs."jdec-master".ref   = "master";
  inputs."jdec-master".repo  = "jdec";
  inputs."jdec-master".type  = "github";
  inputs."jdec-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."jdec-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."jdec-v0_1_0".dir   = "v0_1_0";
  inputs."jdec-v0_1_0".owner = "nim-nix-pkgs";
  inputs."jdec-v0_1_0".ref   = "master";
  inputs."jdec-v0_1_0".repo  = "jdec";
  inputs."jdec-v0_1_0".type  = "github";
  inputs."jdec-v0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."jdec-v0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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