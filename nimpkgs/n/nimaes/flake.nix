{
  description = ''Advanced Encryption Standard, Rijndael Algorithm'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."nimaes-master".dir   = "master";
  inputs."nimaes-master".owner = "nim-nix-pkgs";
  inputs."nimaes-master".ref   = "master";
  inputs."nimaes-master".repo  = "nimaes";
  inputs."nimaes-master".type  = "github";
  inputs."nimaes-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimaes-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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