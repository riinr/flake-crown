{
  description = ''Port of Python's html.escape and html.unescape to Nim'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."htmlunescape-master".url = "path:./master";
  inputs."htmlunescape-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."htmlunescape-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."htmlunescape-v0_1".url = "path:./v0_1";
  inputs."htmlunescape-v0_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."htmlunescape-v0_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."htmlunescape-v0_2".url = "path:./v0_2";
  inputs."htmlunescape-v0_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."htmlunescape-v0_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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