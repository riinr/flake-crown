{
  description = ''MTProto client written in Nim'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-nimgram-master.flake = false;
  inputs.src-nimgram-master.owner = "nimgram";
  inputs.src-nimgram-master.ref   = "refs/heads/master";
  inputs.src-nimgram-master.repo  = "nimgram";
  inputs.src-nimgram-master.type  = "github";
  
  inputs."zippy".dir   = "nimpkgs/z/zippy";
  inputs."zippy".owner = "riinr";
  inputs."zippy".ref   = "flake-pinning";
  inputs."zippy".repo  = "flake-nimble";
  inputs."zippy".type  = "github";
  inputs."zippy".inputs.nixpkgs.follows = "nixpkgs";
  inputs."zippy".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimcrypto".dir   = "nimpkgs/n/nimcrypto";
  inputs."nimcrypto".owner = "riinr";
  inputs."nimcrypto".ref   = "flake-pinning";
  inputs."nimcrypto".repo  = "flake-nimble";
  inputs."nimcrypto".type  = "github";
  inputs."nimcrypto".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimcrypto".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."stint".dir   = "nimpkgs/s/stint";
  inputs."stint".owner = "riinr";
  inputs."stint".ref   = "flake-pinning";
  inputs."stint".repo  = "flake-nimble";
  inputs."stint".type  = "github";
  inputs."stint".inputs.nixpkgs.follows = "nixpkgs";
  inputs."stint".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."gmp".dir   = "nimpkgs/g/gmp";
  inputs."gmp".owner = "riinr";
  inputs."gmp".ref   = "flake-pinning";
  inputs."gmp".repo  = "flake-nimble";
  inputs."gmp".type  = "github";
  inputs."gmp".inputs.nixpkgs.follows = "nixpkgs";
  inputs."gmp".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."https://github.com/dadadani/nim-random".dir   = "nimpkgs/h/https://github.com/dadadani/nim-random";
  inputs."https://github.com/dadadani/nim-random".owner = "riinr";
  inputs."https://github.com/dadadani/nim-random".ref   = "flake-pinning";
  inputs."https://github.com/dadadani/nim-random".repo  = "flake-nimble";
  inputs."https://github.com/dadadani/nim-random".type  = "github";
  inputs."https://github.com/dadadani/nim-random".inputs.nixpkgs.follows = "nixpkgs";
  inputs."https://github.com/dadadani/nim-random".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-nimgram-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-nimgram-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}