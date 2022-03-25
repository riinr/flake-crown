{
  description = ''Operators, commands and functions more c-like, plus a few other utilities'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-c_alikes-v0_2_0.flake = false;
  inputs.src-c_alikes-v0_2_0.ref   = "refs/tags/v0.2.0";
  inputs.src-c_alikes-v0_2_0.owner = "ReneSac";
  inputs.src-c_alikes-v0_2_0.repo  = "c_alikes";
  inputs.src-c_alikes-v0_2_0.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-c_alikes-v0_2_0"];
    over = if builtins.pathExists ./override.nix 
           then { override = import ./override.nix; }
           else { };
  in lib.mkRefOutput (over // {
    inherit self nixpkgs ;
    src  = deps."src-c_alikes-v0_2_0";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  } );
}