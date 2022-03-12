{
  description = ''Quickly extracts natural-language text from a MediaWiki XML file.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."wiki2text-master".url = "path:./master";
  inputs."wiki2text-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."wiki2text-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."wiki2text-v0_1".url = "path:./v0_1";
  inputs."wiki2text-v0_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."wiki2text-v0_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."wiki2text-v0_2".url = "path:./v0_2";
  inputs."wiki2text-v0_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."wiki2text-v0_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."wiki2text-v0_2_1".url = "path:./v0_2_1";
  inputs."wiki2text-v0_2_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."wiki2text-v0_2_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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