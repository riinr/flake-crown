{
  description = ''Simple, modern and portable interpreted programming language for efficient scripting'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-arturo-v0_9_6_1.flake = false;
  inputs.src-arturo-v0_9_6_1.ref   = "refs/tags/v0.9.6.1";
  inputs.src-arturo-v0_9_6_1.owner = "arturo-lang";
  inputs.src-arturo-v0_9_6_1.repo  = "arturo";
  inputs.src-arturo-v0_9_6_1.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-arturo-v0_9_6_1"];
    over = if builtins.pathExists ./override.nix 
           then { override = import ./override.nix; }
           else { };
  in lib.mkRefOutput (over // {
    inherit self nixpkgs ;
    src  = deps."src-arturo-v0_9_6_1";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  } );
}