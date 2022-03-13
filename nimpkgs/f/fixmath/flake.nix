{
  description = ''LibFixMath 16:16 fixed point support for nim'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."fixmath-master".dir   = "master";
  inputs."fixmath-master".owner = "nim-nix-pkgs";
  inputs."fixmath-master".ref   = "master";
  inputs."fixmath-master".repo  = "fixmath";
  inputs."fixmath-master".type  = "github";
  inputs."fixmath-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."fixmath-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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