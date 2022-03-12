{
  description = ''a benchmark tool'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-golden-2_3_1.flake = false;
  inputs.src-golden-2_3_1.owner = "disruptek";
  inputs.src-golden-2_3_1.ref   = "refs/tags/2.3.1";
  inputs.src-golden-2_3_1.repo  = "golden";
  inputs.src-golden-2_3_1.type  = "github";
  
  inputs."cligen".dir   = "nimpkgs/c/cligen";
  inputs."cligen".owner = "riinr";
  inputs."cligen".ref   = "flake-pinning";
  inputs."cligen".repo  = "flake-nimble";
  inputs."cligen".type  = "github";
  inputs."cligen".inputs.nixpkgs.follows = "nixpkgs";
  inputs."cligen".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."foreach".dir   = "nimpkgs/f/foreach";
  inputs."foreach".owner = "riinr";
  inputs."foreach".ref   = "flake-pinning";
  inputs."foreach".repo  = "flake-nimble";
  inputs."foreach".type  = "github";
  inputs."foreach".inputs.nixpkgs.follows = "nixpkgs";
  inputs."foreach".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimetry".dir   = "nimpkgs/n/nimetry";
  inputs."nimetry".owner = "riinr";
  inputs."nimetry".ref   = "flake-pinning";
  inputs."nimetry".repo  = "flake-nimble";
  inputs."nimetry".type  = "github";
  inputs."nimetry".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimetry".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."msgpack4nim".dir   = "nimpkgs/m/msgpack4nim";
  inputs."msgpack4nim".owner = "riinr";
  inputs."msgpack4nim".ref   = "flake-pinning";
  inputs."msgpack4nim".repo  = "flake-nimble";
  inputs."msgpack4nim".type  = "github";
  inputs."msgpack4nim".inputs.nixpkgs.follows = "nixpkgs";
  inputs."msgpack4nim".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."lmdb".dir   = "nimpkgs/l/lmdb";
  inputs."lmdb".owner = "riinr";
  inputs."lmdb".ref   = "flake-pinning";
  inputs."lmdb".repo  = "flake-nimble";
  inputs."lmdb".type  = "github";
  inputs."lmdb".inputs.nixpkgs.follows = "nixpkgs";
  inputs."lmdb".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."terminaltables".dir   = "nimpkgs/t/terminaltables";
  inputs."terminaltables".owner = "riinr";
  inputs."terminaltables".ref   = "flake-pinning";
  inputs."terminaltables".repo  = "flake-nimble";
  inputs."terminaltables".type  = "github";
  inputs."terminaltables".inputs.nixpkgs.follows = "nixpkgs";
  inputs."terminaltables".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."http://github.com/genotrance/nimgit2.git".dir   = "nimpkgs/h/http://github.com/genotrance/nimgit2.git";
  inputs."http://github.com/genotrance/nimgit2.git".owner = "riinr";
  inputs."http://github.com/genotrance/nimgit2.git".ref   = "flake-pinning";
  inputs."http://github.com/genotrance/nimgit2.git".repo  = "flake-nimble";
  inputs."http://github.com/genotrance/nimgit2.git".type  = "github";
  inputs."http://github.com/genotrance/nimgit2.git".inputs.nixpkgs.follows = "nixpkgs";
  inputs."http://github.com/genotrance/nimgit2.git".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-golden-2_3_1"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-golden-2_3_1";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}