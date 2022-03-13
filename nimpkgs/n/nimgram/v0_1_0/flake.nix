{
  description = ''MTProto client written in Nim'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-nimgram-v0_1_0.flake = false;
  inputs.src-nimgram-v0_1_0.owner = "nimgram";
  inputs.src-nimgram-v0_1_0.ref   = "refs/tags/v0.1.0";
  inputs.src-nimgram-v0_1_0.repo  = "nimgram";
  inputs.src-nimgram-v0_1_0.type  = "github";
  
  inputs."zippy".owner = "nim-nix-pkgs";
  inputs."zippy".ref   = "master";
  inputs."zippy".repo  = "zippy";
  inputs."zippy".type  = "github";
  inputs."zippy".inputs.nixpkgs.follows = "nixpkgs";
  inputs."zippy".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimcrypto".owner = "nim-nix-pkgs";
  inputs."nimcrypto".ref   = "master";
  inputs."nimcrypto".repo  = "nimcrypto";
  inputs."nimcrypto".type  = "github";
  inputs."nimcrypto".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimcrypto".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."stint".owner = "nim-nix-pkgs";
  inputs."stint".ref   = "master";
  inputs."stint".repo  = "stint";
  inputs."stint".type  = "github";
  inputs."stint".inputs.nixpkgs.follows = "nixpkgs";
  inputs."stint".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."gmp".owner = "nim-nix-pkgs";
  inputs."gmp".ref   = "master";
  inputs."gmp".repo  = "gmp";
  inputs."gmp".type  = "github";
  inputs."gmp".inputs.nixpkgs.follows = "nixpkgs";
  inputs."gmp".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."https://github.com/dadadani/nim-random".owner = "nim-nix-pkgs";
  inputs."https://github.com/dadadani/nim-random".ref   = "master";
  inputs."https://github.com/dadadani/nim-random".repo  = "https://github.com/dadadani/nim-random";
  inputs."https://github.com/dadadani/nim-random".type  = "github";
  inputs."https://github.com/dadadani/nim-random".inputs.nixpkgs.follows = "nixpkgs";
  inputs."https://github.com/dadadani/nim-random".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-nimgram-v0_1_0"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-nimgram-v0_1_0";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}