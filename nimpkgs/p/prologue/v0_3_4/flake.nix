{
  description = ''Another micro web framework.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-prologue-v0_3_4.flake = false;
  inputs.src-prologue-v0_3_4.owner = "planety";
  inputs.src-prologue-v0_3_4.ref   = "refs/tags/v0.3.4";
  inputs.src-prologue-v0_3_4.repo  = "Prologue";
  inputs.src-prologue-v0_3_4.type  = "github";
  
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
  
  inputs."cookiejar".owner = "nim-nix-pkgs";
  inputs."cookiejar".ref   = "master";
  inputs."cookiejar".repo  = "cookiejar";
  inputs."cookiejar".type  = "github";
  inputs."cookiejar".inputs.nixpkgs.follows = "nixpkgs";
  inputs."cookiejar".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."httpx".owner = "nim-nix-pkgs";
  inputs."httpx".ref   = "master";
  inputs."httpx".repo  = "httpx";
  inputs."httpx".type  = "github";
  inputs."httpx".inputs.nixpkgs.follows = "nixpkgs";
  inputs."httpx".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-prologue-v0_3_4"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-prologue-v0_3_4";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}