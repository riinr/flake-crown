{
  description = ''Selectors extension.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-ioselectors-v0_1_8.flake = false;
  inputs.src-ioselectors-v0_1_8.ref   = "refs/tags/v0.1.8";
  inputs.src-ioselectors-v0_1_8.owner = "ringabout";
  inputs.src-ioselectors-v0_1_8.repo  = "ioselectors";
  inputs.src-ioselectors-v0_1_8.type  = "github";
  
  inputs."wepoll".owner = "nim-nix-pkgs";
  inputs."wepoll".ref   = "master";
  inputs."wepoll".repo  = "wepoll";
  inputs."wepoll".dir   = "v0_1_0";
  inputs."wepoll".type  = "github";
  inputs."wepoll".inputs.nixpkgs.follows = "nixpkgs";
  inputs."wepoll".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-ioselectors-v0_1_8"];
    over = if builtins.pathExists ./override.nix 
           then { override = import ./override.nix; }
           else { };
  in lib.mkRefOutput (over // {
    inherit self nixpkgs ;
    src  = deps."src-ioselectors-v0_1_8";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  } );
}