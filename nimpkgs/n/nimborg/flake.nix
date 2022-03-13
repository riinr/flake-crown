{
  description = ''High-level and low-level interfaces to python and lua'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."nimborg-master".dir   = "master";
  inputs."nimborg-master".owner = "nim-nix-pkgs";
  inputs."nimborg-master".ref   = "master";
  inputs."nimborg-master".repo  = "nimborg";
  inputs."nimborg-master".type  = "github";
  inputs."nimborg-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimborg-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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