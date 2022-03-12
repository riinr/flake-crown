{
  description = ''A simple library for localizing Nim applications.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-locale-master.flake = false;
  inputs.src-locale-master.owner = "Amrykid";
  inputs.src-locale-master.ref   = "refs/heads/master";
  inputs.src-locale-master.repo  = "nim-locale";
  inputs.src-locale-master.type  = "github";
  
  inputs."nimrod".dir   = "nimpkgs/n/nimrod";
  inputs."nimrod".owner = "riinr";
  inputs."nimrod".ref   = "flake-pinning";
  inputs."nimrod".repo  = "flake-nimble";
  inputs."nimrod".type  = "github";
  inputs."nimrod".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimrod".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-locale-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-locale-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}