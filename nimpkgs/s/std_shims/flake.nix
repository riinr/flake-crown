{
  description = ''APIs available in the latests version of Nim, backported to older stable releases'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."stew-master".dir   = "master";
  inputs."stew-master".owner = "nim-nix-pkgs";
  inputs."stew-master".ref   = "master";
  inputs."stew-master".repo  = "stew";
  inputs."stew-master".type  = "github";
  inputs."stew-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."stew-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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