{
  description = ''Test failing snippets from Nim's issues'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."tissue-master".dir   = "master";
  inputs."tissue-master".owner = "nim-nix-pkgs";
  inputs."tissue-master".ref   = "master";
  inputs."tissue-master".repo  = "tissue";
  inputs."tissue-master".type  = "github";
  inputs."tissue-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."tissue-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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