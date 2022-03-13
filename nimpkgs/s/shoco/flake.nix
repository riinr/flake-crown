{
  description = ''A fast compressor for short strings'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."shoco-master".dir   = "master";
  inputs."shoco-master".owner = "nim-nix-pkgs";
  inputs."shoco-master".ref   = "master";
  inputs."shoco-master".repo  = "shoco";
  inputs."shoco-master".type  = "github";
  inputs."shoco-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."shoco-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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