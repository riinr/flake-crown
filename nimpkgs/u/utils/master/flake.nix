{
  description = ''Collection of string, parsing, pointer, ... utilities.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-utils-master.flake = false;
  inputs.src-utils-master.owner = "nim-appkit";
  inputs.src-utils-master.ref   = "refs/heads/master";
  inputs.src-utils-master.repo  = "utils";
  inputs.src-utils-master.type  = "github";
  
  inputs."values".dir   = "nimpkgs/v/values";
  inputs."values".owner = "riinr";
  inputs."values".ref   = "flake-pinning";
  inputs."values".repo  = "flake-nimble";
  inputs."values".type  = "github";
  inputs."values".inputs.nixpkgs.follows = "nixpkgs";
  inputs."values".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-utils-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-utils-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}