{
  description = ''Block copy of any text in HTML'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."htmlanticopy-master".dir   = "master";
  inputs."htmlanticopy-master".owner = "nim-nix-pkgs";
  inputs."htmlanticopy-master".ref   = "master";
  inputs."htmlanticopy-master".repo  = "htmlanticopy";
  inputs."htmlanticopy-master".type  = "github";
  inputs."htmlanticopy-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."htmlanticopy-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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