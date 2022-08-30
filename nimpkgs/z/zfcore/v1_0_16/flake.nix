{
  description = ''High performance asynchttpserver and web framework for nim lang.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-zfcore-v1_0_16.flake = false;
  inputs.src-zfcore-v1_0_16.ref   = "refs/tags/v1.0.16";
  inputs.src-zfcore-v1_0_16.owner = "zendbit";
  inputs.src-zfcore-v1_0_16.repo  = "nim.zfcore";
  inputs.src-zfcore-v1_0_16.type  = "github";
  
  inputs."zfblast".owner = "nim-nix-pkgs";
  inputs."zfblast".ref   = "master";
  inputs."zfblast".repo  = "zfblast";
  inputs."zfblast".dir   = "v0_2_7";
  inputs."zfblast".type  = "github";
  inputs."zfblast".inputs.nixpkgs.follows = "nixpkgs";
  inputs."zfblast".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."uri3".owner = "nim-nix-pkgs";
  inputs."uri3".ref   = "master";
  inputs."uri3".repo  = "uri3";
  inputs."uri3".dir   = "v0_1_7";
  inputs."uri3".type  = "github";
  inputs."uri3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."uri3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-zfcore-v1_0_16"];
    over = if builtins.pathExists ./override.nix 
           then { override = import ./override.nix; }
           else { };
  in lib.mkRefOutput (over // {
    inherit self nixpkgs ;
    src  = deps."src-zfcore-v1_0_16";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  } );
}