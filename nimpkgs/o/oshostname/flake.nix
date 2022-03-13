{
  description = ''Get the current hostname with gethostname(2)'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."oshostname-master".dir   = "master";
  inputs."oshostname-master".owner = "nim-nix-pkgs";
  inputs."oshostname-master".ref   = "master";
  inputs."oshostname-master".repo  = "oshostname";
  inputs."oshostname-master".type  = "github";
  inputs."oshostname-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."oshostname-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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