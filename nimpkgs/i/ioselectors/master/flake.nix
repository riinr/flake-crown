{
  description = ''Selectors extension.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-ioselectors-master.flake = false;
  inputs.src-ioselectors-master.ref   = "refs/heads/master";
  inputs.src-ioselectors-master.owner = "ringabout";
  inputs.src-ioselectors-master.repo  = "ioselectors";
  inputs.src-ioselectors-master.type  = "github";
  
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
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-ioselectors-master"];
    over = if builtins.pathExists ./override.nix 
           then { override = import ./override.nix; }
           else { };
  in lib.mkRefOutput (over // {
    inherit self nixpkgs ;
    src  = deps."src-ioselectors-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  } );
}