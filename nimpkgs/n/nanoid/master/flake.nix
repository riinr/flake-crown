{
  description = ''The Nim implementation of NanoID'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-nanoid-master.flake = false;
  inputs.src-nanoid-master.owner = "icyphox";
  inputs.src-nanoid-master.ref   = "refs/heads/master";
  inputs.src-nanoid-master.repo  = "nanoid.nim";
  inputs.src-nanoid-master.type  = "github";
  
  inputs."random".dir   = "nimpkgs/r/random";
  inputs."random".owner = "riinr";
  inputs."random".ref   = "flake-pinning";
  inputs."random".repo  = "flake-nimble";
  inputs."random".type  = "github";
  inputs."random".inputs.nixpkgs.follows = "nixpkgs";
  inputs."random".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-nanoid-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-nanoid-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}