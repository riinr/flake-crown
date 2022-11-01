{
  description = ''MTProto client written in Nim'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-nimgram-v0_2_0.flake = false;
  inputs.src-nimgram-v0_2_0.ref   = "refs/tags/v0.2.0";
  inputs.src-nimgram-v0_2_0.owner = "nimgram";
  inputs.src-nimgram-v0_2_0.repo  = "nimgram";
  inputs.src-nimgram-v0_2_0.type  = "github";
  
  inputs."github.com/nimgram/tl-parser".owner = "nim-nix-pkgs";
  inputs."github.com/nimgram/tl-parser".ref   = "master";
  inputs."github.com/nimgram/tl-parser".repo  = "github.com/nimgram/tl-parser";
  inputs."github.com/nimgram/tl-parser".dir   = "";
  inputs."github.com/nimgram/tl-parser".type  = "github";
  inputs."github.com/nimgram/tl-parser".inputs.nixpkgs.follows = "nixpkgs";
  inputs."github.com/nimgram/tl-parser".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."github.com/nimgram/tl-types".owner = "nim-nix-pkgs";
  inputs."github.com/nimgram/tl-types".ref   = "master";
  inputs."github.com/nimgram/tl-types".repo  = "github.com/nimgram/tl-types";
  inputs."github.com/nimgram/tl-types".dir   = "";
  inputs."github.com/nimgram/tl-types".type  = "github";
  inputs."github.com/nimgram/tl-types".inputs.nixpkgs.follows = "nixpkgs";
  inputs."github.com/nimgram/tl-types".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."crc32".owner = "nim-nix-pkgs";
  inputs."crc32".ref   = "master";
  inputs."crc32".repo  = "crc32";
  inputs."crc32".dir   = "master";
  inputs."crc32".type  = "github";
  inputs."crc32".inputs.nixpkgs.follows = "nixpkgs";
  inputs."crc32".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."stint".owner = "nim-nix-pkgs";
  inputs."stint".ref   = "master";
  inputs."stint".repo  = "stint";
  inputs."stint".dir   = "master";
  inputs."stint".type  = "github";
  inputs."stint".inputs.nixpkgs.follows = "nixpkgs";
  inputs."stint".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."github.com/dadadani/bigints".owner = "nim-nix-pkgs";
  inputs."github.com/dadadani/bigints".ref   = "master";
  inputs."github.com/dadadani/bigints".repo  = "github.com/dadadani/bigints";
  inputs."github.com/dadadani/bigints".dir   = "";
  inputs."github.com/dadadani/bigints".type  = "github";
  inputs."github.com/dadadani/bigints".inputs.nixpkgs.follows = "nixpkgs";
  inputs."github.com/dadadani/bigints".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimcrypto".owner = "nim-nix-pkgs";
  inputs."nimcrypto".ref   = "master";
  inputs."nimcrypto".repo  = "nimcrypto";
  inputs."nimcrypto".dir   = "master";
  inputs."nimcrypto".type  = "github";
  inputs."nimcrypto".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimcrypto".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."norm".owner = "nim-nix-pkgs";
  inputs."norm".ref   = "master";
  inputs."norm".repo  = "norm";
  inputs."norm".dir   = "2_6_0";
  inputs."norm".type  = "github";
  inputs."norm".inputs.nixpkgs.follows = "nixpkgs";
  inputs."norm".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-nimgram-v0_2_0"];
    over = if builtins.pathExists ./override.nix 
           then { override = import ./override.nix; }
           else { };
  in lib.mkRefOutput (over // {
    inherit self nixpkgs ;
    src  = deps."src-nimgram-v0_2_0";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  } );
}