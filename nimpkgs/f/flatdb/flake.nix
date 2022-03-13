{
  description = ''small/tiny, flatfile, jsonl based, inprogress database for nim'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."flatdb-master".dir   = "master";
  inputs."flatdb-master".owner = "nim-nix-pkgs";
  inputs."flatdb-master".ref   = "master";
  inputs."flatdb-master".repo  = "flatdb";
  inputs."flatdb-master".type  = "github";
  inputs."flatdb-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."flatdb-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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