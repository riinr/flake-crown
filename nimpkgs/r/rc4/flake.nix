{
  description = ''RC4 library implementation'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."rc4-master".dir   = "master";
  inputs."rc4-master".owner = "nim-nix-pkgs";
  inputs."rc4-master".ref   = "master";
  inputs."rc4-master".repo  = "rc4";
  inputs."rc4-master".type  = "github";
  inputs."rc4-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."rc4-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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