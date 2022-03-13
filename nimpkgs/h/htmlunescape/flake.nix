{
  description = ''Port of Python's html.escape and html.unescape to Nim'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."htmlunescape-master".dir   = "master";
  inputs."htmlunescape-master".owner = "nim-nix-pkgs";
  inputs."htmlunescape-master".ref   = "master";
  inputs."htmlunescape-master".repo  = "htmlunescape";
  inputs."htmlunescape-master".type  = "github";
  inputs."htmlunescape-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."htmlunescape-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."htmlunescape-v0_1".dir   = "v0_1";
  inputs."htmlunescape-v0_1".owner = "nim-nix-pkgs";
  inputs."htmlunescape-v0_1".ref   = "master";
  inputs."htmlunescape-v0_1".repo  = "htmlunescape";
  inputs."htmlunescape-v0_1".type  = "github";
  inputs."htmlunescape-v0_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."htmlunescape-v0_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."htmlunescape-v0_2".dir   = "v0_2";
  inputs."htmlunescape-v0_2".owner = "nim-nix-pkgs";
  inputs."htmlunescape-v0_2".ref   = "master";
  inputs."htmlunescape-v0_2".repo  = "htmlunescape";
  inputs."htmlunescape-v0_2".type  = "github";
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