{
  description = ''Amazon Web Services Signature Version 4'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-sigv4-1_0_6.flake = false;
  inputs.src-sigv4-1_0_6.ref   = "refs/tags/1.0.6";
  inputs.src-sigv4-1_0_6.owner = "disruptek";
  inputs.src-sigv4-1_0_6.repo  = "sigv4";
  inputs.src-sigv4-1_0_6.type  = "github";
  
  inputs."github.com/disruptek/nimcrypto".owner = "nim-nix-pkgs";
  inputs."github.com/disruptek/nimcrypto".ref   = "master";
  inputs."github.com/disruptek/nimcrypto".repo  = "github.com/disruptek/nimcrypto";
  inputs."github.com/disruptek/nimcrypto".dir   = "";
  inputs."github.com/disruptek/nimcrypto".type  = "github";
  inputs."github.com/disruptek/nimcrypto".inputs.nixpkgs.follows = "nixpkgs";
  inputs."github.com/disruptek/nimcrypto".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-sigv4-1_0_6"];
    over = if builtins.pathExists ./override.nix 
           then { override = import ./override.nix; }
           else { };
  in lib.mkRefOutput (over // {
    inherit self nixpkgs ;
    src  = deps."src-sigv4-1_0_6";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  } );
}