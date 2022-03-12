{
  description = ''Game framework, modular and extensible'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-c4-master.flake = false;
  inputs.src-c4-master.owner = "c0ntribut0r";
  inputs.src-c4-master.ref   = "refs/heads/master";
  inputs.src-c4-master.repo  = "cat-400";
  inputs.src-c4-master.type  = "github";
  
  inputs."msgpack4nim".dir   = "nimpkgs/m/msgpack4nim";
  inputs."msgpack4nim".owner = "riinr";
  inputs."msgpack4nim".ref   = "flake-pinning";
  inputs."msgpack4nim".repo  = "flake-nimble";
  inputs."msgpack4nim".type  = "github";
  inputs."msgpack4nim".inputs.nixpkgs.follows = "nixpkgs";
  inputs."msgpack4nim".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-c4-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-c4-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}