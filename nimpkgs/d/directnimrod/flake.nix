{
  description = ''Wrapper for microsoft's DirectX libraries'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."directnimrod-master".dir   = "master";
  inputs."directnimrod-master".owner = "nim-nix-pkgs";
  inputs."directnimrod-master".ref   = "master";
  inputs."directnimrod-master".repo  = "directnimrod";
  inputs."directnimrod-master".type  = "github";
  inputs."directnimrod-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."directnimrod-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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