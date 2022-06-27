{
  description = ''useful minimal http server utils.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."mofuhttputils-master".dir   = "master";
  inputs."mofuhttputils-master".owner = "nim-nix-pkgs";
  inputs."mofuhttputils-master".ref   = "master";
  inputs."mofuhttputils-master".repo  = "mofuhttputils";
  inputs."mofuhttputils-master".type  = "github";
  inputs."mofuhttputils-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."mofuhttputils-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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