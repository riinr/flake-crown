{
  description = ''Simple UI components for the terminal.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-termui-master.flake = false;
  inputs.src-termui-master.ref   = "refs/heads/master";
  inputs.src-termui-master.owner = "jjv360";
  inputs.src-termui-master.repo  = "nim-termui";
  inputs.src-termui-master.type  = "github";
  
  inputs."classes".owner = "nim-nix-pkgs";
  inputs."classes".ref   = "master";
  inputs."classes".repo  = "classes";
  inputs."classes".dir   = "v0_2_11";
  inputs."classes".type  = "github";
  inputs."classes".inputs.nixpkgs.follows = "nixpkgs";
  inputs."classes".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."elvis".owner = "nim-nix-pkgs";
  inputs."elvis".ref   = "master";
  inputs."elvis".repo  = "elvis";
  inputs."elvis".dir   = "v0_5_0";
  inputs."elvis".type  = "github";
  inputs."elvis".inputs.nixpkgs.follows = "nixpkgs";
  inputs."elvis".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-termui-master"];
    over = if builtins.pathExists ./override.nix 
           then { override = import ./override.nix; }
           else { };
  in lib.mkRefOutput (over // {
    inherit self nixpkgs ;
    src  = deps."src-termui-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  } );
}