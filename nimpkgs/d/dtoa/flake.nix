{
  description = ''Port of Milo Yip's fast dtoa() implementation'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."dtoa-master".dir   = "master";
  inputs."dtoa-master".owner = "nim-nix-pkgs";
  inputs."dtoa-master".ref   = "master";
  inputs."dtoa-master".repo  = "dtoa";
  inputs."dtoa-master".type  = "github";
  inputs."dtoa-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."dtoa-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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