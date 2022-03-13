{
  description = ''Nucleic acid folding and design.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."nimna-master".dir   = "master";
  inputs."nimna-master".owner = "nim-nix-pkgs";
  inputs."nimna-master".ref   = "master";
  inputs."nimna-master".repo  = "nimna";
  inputs."nimna-master".type  = "github";
  inputs."nimna-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimna-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimna-v0_1_0".dir   = "v0_1_0";
  inputs."nimna-v0_1_0".owner = "nim-nix-pkgs";
  inputs."nimna-v0_1_0".ref   = "master";
  inputs."nimna-v0_1_0".repo  = "nimna";
  inputs."nimna-v0_1_0".type  = "github";
  inputs."nimna-v0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimna-v0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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