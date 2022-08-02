{
  description = ''Vimeo extractor'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."vimeo-master".dir   = "master";
  inputs."vimeo-master".owner = "nim-nix-pkgs";
  inputs."vimeo-master".ref   = "master";
  inputs."vimeo-master".repo  = "vimeo";
  inputs."vimeo-master".type  = "github";
  inputs."vimeo-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."vimeo-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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