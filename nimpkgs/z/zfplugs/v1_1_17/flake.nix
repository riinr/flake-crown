{
  description = ''This is the plugins for the zfcore framework https://github.com/zendbit/nim.zfcore'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-zfplugs-v1_1_17.flake = false;
  inputs.src-zfplugs-v1_1_17.ref   = "refs/tags/v1.1.17";
  inputs.src-zfplugs-v1_1_17.owner = "zendbit";
  inputs.src-zfplugs-v1_1_17.repo  = "nim.zfplugs";
  inputs.src-zfplugs-v1_1_17.type  = "github";
  
  inputs."zfdbms".owner = "nim-nix-pkgs";
  inputs."zfdbms".ref   = "master";
  inputs."zfdbms".repo  = "zfdbms";
  inputs."zfdbms".dir   = "v0_0_9";
  inputs."zfdbms".type  = "github";
  inputs."zfdbms".inputs.nixpkgs.follows = "nixpkgs";
  inputs."zfdbms".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."zfcore".owner = "nim-nix-pkgs";
  inputs."zfcore".ref   = "master";
  inputs."zfcore".repo  = "zfcore";
  inputs."zfcore".dir   = "v1_1_18";
  inputs."zfcore".type  = "github";
  inputs."zfcore".inputs.nixpkgs.follows = "nixpkgs";
  inputs."zfcore".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."mustache".owner = "nim-nix-pkgs";
  inputs."mustache".ref   = "master";
  inputs."mustache".repo  = "mustache";
  inputs."mustache".dir   = "v0_4_3";
  inputs."mustache".type  = "github";
  inputs."mustache".inputs.nixpkgs.follows = "nixpkgs";
  inputs."mustache".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-zfplugs-v1_1_17"];
    over = if builtins.pathExists ./override.nix 
           then { override = import ./override.nix; }
           else { };
  in lib.mkRefOutput (over // {
    inherit self nixpkgs ;
    src  = deps."src-zfplugs-v1_1_17";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  } );
}