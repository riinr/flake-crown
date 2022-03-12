{
  description = ''Nucleic acid folding and design.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."nimna-master".url = "path:./master";
  inputs."nimna-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimna-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimna-v0_1_0".url = "path:./v0_1_0";
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