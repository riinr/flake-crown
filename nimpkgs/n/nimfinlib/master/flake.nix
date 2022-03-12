{
  description = ''Financial Library for Nim'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-nimFinLib-master.flake = false;
  inputs.src-nimFinLib-master.owner = "qqtop";
  inputs.src-nimFinLib-master.ref   = "refs/heads/master";
  inputs.src-nimFinLib-master.repo  = "NimFinLib";
  inputs.src-nimFinLib-master.type  = "github";
  
  inputs."https://github.com/qqtop/nimcx".dir   = "nimpkgs/h/https://github.com/qqtop/nimcx";
  inputs."https://github.com/qqtop/nimcx".owner = "riinr";
  inputs."https://github.com/qqtop/nimcx".ref   = "flake-pinning";
  inputs."https://github.com/qqtop/nimcx".repo  = "flake-nimble";
  inputs."https://github.com/qqtop/nimcx".type  = "github";
  inputs."https://github.com/qqtop/nimcx".inputs.nixpkgs.follows = "nixpkgs";
  inputs."https://github.com/qqtop/nimcx".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-nimFinLib-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-nimFinLib-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}