{
  description = ''Another micro web framework.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-prologue-v0_3_2.flake = false;
  inputs.src-prologue-v0_3_2.owner = "planety";
  inputs.src-prologue-v0_3_2.ref   = "refs/tags/v0.3.2";
  inputs.src-prologue-v0_3_2.repo  = "Prologue";
  inputs.src-prologue-v0_3_2.type  = "github";
  
  inputs."regex".owner = "nim-nix-pkgs";
  inputs."regex".ref   = "master";
  inputs."regex".repo  = "regex";
  inputs."regex".type  = "github";
  inputs."regex".inputs.nixpkgs.follows = "nixpkgs";
  inputs."regex".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimcrypto".owner = "nim-nix-pkgs";
  inputs."nimcrypto".ref   = "master";
  inputs."nimcrypto".repo  = "nimcrypto";
  inputs."nimcrypto".type  = "github";
  inputs."nimcrypto".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimcrypto".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."karax".owner = "nim-nix-pkgs";
  inputs."karax".ref   = "master";
  inputs."karax".repo  = "karax";
  inputs."karax".type  = "github";
  inputs."karax".inputs.nixpkgs.follows = "nixpkgs";
  inputs."karax".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."cookies".owner = "nim-nix-pkgs";
  inputs."cookies".ref   = "master";
  inputs."cookies".repo  = "cookies";
  inputs."cookies".type  = "github";
  inputs."cookies".inputs.nixpkgs.follows = "nixpkgs";
  inputs."cookies".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."https://github.com/xflywind/httpx".owner = "nim-nix-pkgs";
  inputs."https://github.com/xflywind/httpx".ref   = "master";
  inputs."https://github.com/xflywind/httpx".repo  = "https://github.com/xflywind/httpx";
  inputs."https://github.com/xflywind/httpx".type  = "github";
  inputs."https://github.com/xflywind/httpx".inputs.nixpkgs.follows = "nixpkgs";
  inputs."https://github.com/xflywind/httpx".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-prologue-v0_3_2"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-prologue-v0_3_2";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}