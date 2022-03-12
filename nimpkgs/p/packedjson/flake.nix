{
  description = ''packedjson is an alternative Nim implementation for JSON. The JSON is essentially kept as a single string in order to save memory over a more traditional tree representation.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."packedjson-master".url = "path:./master";
  inputs."packedjson-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."packedjson-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."packedjson-0_1_0".url = "path:./0_1_0";
  inputs."packedjson-0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."packedjson-0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."packedjson-0_2_1".url = "path:./0_2_1";
  inputs."packedjson-0_2_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."packedjson-0_2_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."packedjson-0_2_2".url = "path:./0_2_2";
  inputs."packedjson-0_2_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."packedjson-0_2_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib"]
  in lib.mkProjectOutput {
    inherit self nixpkgs;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
    refs = builtins.removeAttrs inputs args;
  };
}