{
  description = ''Shebang frontend for running nim code as scripts. Does not require .nim extensions.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."nimrun-master".dir   = "master";
  inputs."nimrun-master".owner = "nim-nix-pkgs";
  inputs."nimrun-master".ref   = "master";
  inputs."nimrun-master".repo  = "nimrun";
  inputs."nimrun-master".type  = "github";
  inputs."nimrun-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimrun-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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