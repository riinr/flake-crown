{
  description = ''Converts HTML to Karax representation'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."tokarax-master".dir   = "master";
  inputs."tokarax-master".owner = "nim-nix-pkgs";
  inputs."tokarax-master".ref   = "master";
  inputs."tokarax-master".repo  = "tokarax";
  inputs."tokarax-master".type  = "github";
  inputs."tokarax-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."tokarax-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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