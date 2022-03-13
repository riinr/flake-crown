{
  description = ''Nim - Python bridge'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."nimpy-master".dir   = "master";
  inputs."nimpy-master".owner = "nim-nix-pkgs";
  inputs."nimpy-master".ref   = "master";
  inputs."nimpy-master".repo  = "nimpy";
  inputs."nimpy-master".type  = "github";
  inputs."nimpy-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimpy-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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