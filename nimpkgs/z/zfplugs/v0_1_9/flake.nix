{
  description = ''This is the plugins for the zfcore framework https://github.com/zendbit/nim.zfcore'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-zfplugs-v0_1_9.flake = false;
  inputs.src-zfplugs-v0_1_9.ref   = "refs/tags/v0.1.9";
  inputs.src-zfplugs-v0_1_9.owner = "zendbit";
  inputs.src-zfplugs-v0_1_9.repo  = "nim.zfplugs";
  inputs.src-zfplugs-v0_1_9.type  = "github";
  
  inputs."zfdbms".owner = "nim-nix-pkgs";
  inputs."zfdbms".ref   = "master";
  inputs."zfdbms".repo  = "zfdbms";
  inputs."zfdbms".dir   = "v0_0_7";
  inputs."zfdbms".type  = "github";
  inputs."zfdbms".inputs.nixpkgs.follows = "nixpkgs";
  inputs."zfdbms".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."zfcore".owner = "nim-nix-pkgs";
  inputs."zfcore".ref   = "master";
  inputs."zfcore".repo  = "zfcore";
  inputs."zfcore".dir   = "v1_1_15";
  inputs."zfcore".type  = "github";
  inputs."zfcore".inputs.nixpkgs.follows = "nixpkgs";
  inputs."zfcore".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."moustachu".owner = "nim-nix-pkgs";
  inputs."moustachu".ref   = "master";
  inputs."moustachu".repo  = "moustachu";
  inputs."moustachu".dir   = "0_14_0";
  inputs."moustachu".type  = "github";
  inputs."moustachu".inputs.nixpkgs.follows = "nixpkgs";
  inputs."moustachu".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-zfplugs-v0_1_9"];
    over = if builtins.pathExists ./override.nix 
           then { override = import ./override.nix; }
           else { };
  in lib.mkRefOutput (over // {
    inherit self nixpkgs ;
    src  = deps."src-zfplugs-v0_1_9";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  } );
}