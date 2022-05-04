{
  description = ''funchook wrapper'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-funchook-0_1_2.flake = false;
  inputs.src-funchook-0_1_2.ref   = "refs/tags/0.1.2";
  inputs.src-funchook-0_1_2.owner = "ba0f3";
  inputs.src-funchook-0_1_2.repo  = "funchook.nim";
  inputs.src-funchook-0_1_2.type  = "github";
  
  inputs."distorm3".owner = "nim-nix-pkgs";
  inputs."distorm3".ref   = "master";
  inputs."distorm3".repo  = "distorm3";
  inputs."distorm3".dir   = "3_5_2";
  inputs."distorm3".type  = "github";
  inputs."distorm3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."distorm3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-funchook-0_1_2"];
    over = if builtins.pathExists ./override.nix 
           then { override = import ./override.nix; }
           else { };
  in lib.mkRefOutput (over // {
    inherit self nixpkgs ;
    src  = deps."src-funchook-0_1_2";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  } );
}