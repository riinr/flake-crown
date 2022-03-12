{
  description = ''Nim implementation of NanoID, a tiny, secure, URL-friendly, unique string ID generator. Works with Linux and Windows!'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-neoid-master.flake = false;
  inputs.src-neoid-master.owner = "theAkito";
  inputs.src-neoid-master.ref   = "refs/heads/master";
  inputs.src-neoid-master.repo  = "nim-neoid";
  inputs.src-neoid-master.type  = "github";
  
  inputs."random".dir   = "nimpkgs/r/random";
  inputs."random".owner = "riinr";
  inputs."random".ref   = "flake-pinning";
  inputs."random".repo  = "flake-nimble";
  inputs."random".type  = "github";
  inputs."random".inputs.nixpkgs.follows = "nixpkgs";
  inputs."random".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."winim".dir   = "nimpkgs/w/winim";
  inputs."winim".owner = "riinr";
  inputs."winim".ref   = "flake-pinning";
  inputs."winim".repo  = "flake-nimble";
  inputs."winim".type  = "github";
  inputs."winim".inputs.nixpkgs.follows = "nixpkgs";
  inputs."winim".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-neoid-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-neoid-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}