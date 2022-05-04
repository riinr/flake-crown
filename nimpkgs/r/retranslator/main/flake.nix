{
  description = ''Transformer'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-retranslator-main.flake = false;
  inputs.src-retranslator-main.ref   = "refs/heads/main";
  inputs.src-retranslator-main.owner = "linksplatform";
  inputs.src-retranslator-main.repo  = "RegularExpressions.Transformer";
  inputs.src-retranslator-main.type  = "github";
  
  inputs."nre".owner = "nim-nix-pkgs";
  inputs."nre".ref   = "master";
  inputs."nre".repo  = "nre";
  inputs."nre".dir   = "2_0_2";
  inputs."nre".type  = "github";
  inputs."nre".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nre".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-retranslator-main"];
    over = if builtins.pathExists ./override.nix 
           then { override = import ./override.nix; }
           else { };
  in lib.mkRefOutput (over // {
    inherit self nixpkgs ;
    src  = deps."src-retranslator-main";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  } );
}