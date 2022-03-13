{
  description = ''Nim implementation of NanoID, a tiny, secure, URL-friendly, unique string ID generator. Works with Linux and Windows!'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-neoid-0_3_0.flake = false;
  inputs.src-neoid-0_3_0.owner = "theAkito";
  inputs.src-neoid-0_3_0.ref   = "refs/tags/0.3.0";
  inputs.src-neoid-0_3_0.repo  = "nim-neoid";
  inputs.src-neoid-0_3_0.type  = "github";
  
  inputs."random".owner = "nim-nix-pkgs";
  inputs."random".ref   = "master";
  inputs."random".repo  = "random";
  inputs."random".type  = "github";
  inputs."random".inputs.nixpkgs.follows = "nixpkgs";
  inputs."random".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."winim".owner = "nim-nix-pkgs";
  inputs."winim".ref   = "master";
  inputs."winim".repo  = "winim";
  inputs."winim".type  = "github";
  inputs."winim".inputs.nixpkgs.follows = "nixpkgs";
  inputs."winim".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-neoid-0_3_0"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-neoid-0_3_0";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}