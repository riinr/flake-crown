{
  description = ''rodster'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-rodster-0_1_0.flake = false;
  inputs.src-rodster-0_1_0.ref   = "refs/tags/0.1.0";
  inputs.src-rodster-0_1_0.owner = "j-a-s-d";
  inputs.src-rodster-0_1_0.repo  = "rodster";
  inputs.src-rodster-0_1_0.type  = "github";
  
  inputs."xam".owner = "nim-nix-pkgs";
  inputs."xam".ref   = "master";
  inputs."xam".repo  = "xam";
  inputs."xam".dir   = "1_9_0";
  inputs."xam".type  = "github";
  inputs."xam".inputs.nixpkgs.follows = "nixpkgs";
  inputs."xam".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-rodster-0_1_0"];
    over = if builtins.pathExists ./override.nix 
           then { override = import ./override.nix; }
           else { };
  in lib.mkRefOutput (over // {
    inherit self nixpkgs ;
    src  = deps."src-rodster-0_1_0";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  } );
}