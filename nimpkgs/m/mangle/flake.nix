{
  description = ''Yet another iterator library'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."mangle-master".dir   = "master";
  inputs."mangle-master".owner = "nim-nix-pkgs";
  inputs."mangle-master".ref   = "master";
  inputs."mangle-master".repo  = "mangle";
  inputs."mangle-master".type  = "github";
  inputs."mangle-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."mangle-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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