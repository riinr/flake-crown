{
  description = ''libfuzzy/ssdeep wrapper'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."libfuzzy-master".dir   = "master";
  inputs."libfuzzy-master".owner = "nim-nix-pkgs";
  inputs."libfuzzy-master".ref   = "master";
  inputs."libfuzzy-master".repo  = "libfuzzy";
  inputs."libfuzzy-master".type  = "github";
  inputs."libfuzzy-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."libfuzzy-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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