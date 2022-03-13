{
  description = ''DataFrame API enabling fast out-of-core data analytics'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."nimdata-master".dir   = "master";
  inputs."nimdata-master".owner = "nim-nix-pkgs";
  inputs."nimdata-master".ref   = "master";
  inputs."nimdata-master".repo  = "nimdata";
  inputs."nimdata-master".type  = "github";
  inputs."nimdata-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimdata-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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