{
  description = ''dbg template; in debug echo'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."dbg-master".dir   = "master";
  inputs."dbg-master".owner = "nim-nix-pkgs";
  inputs."dbg-master".ref   = "master";
  inputs."dbg-master".repo  = "dbg";
  inputs."dbg-master".type  = "github";
  inputs."dbg-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."dbg-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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