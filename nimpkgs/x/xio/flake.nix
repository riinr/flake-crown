{
  description = ''Cross platform system API for os and net.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."xio-master".dir   = "master";
  inputs."xio-master".owner = "nim-nix-pkgs";
  inputs."xio-master".ref   = "master";
  inputs."xio-master".repo  = "xio";
  inputs."xio-master".type  = "github";
  inputs."xio-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."xio-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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