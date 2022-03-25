{
  description = ''Simple, modern and portable interpreted programming language for efficient scripting'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-arturo-v0_9_80.flake = false;
  inputs.src-arturo-v0_9_80.ref   = "refs/tags/v0.9.80";
  inputs.src-arturo-v0_9_80.owner = "arturo-lang";
  inputs.src-arturo-v0_9_80.repo  = "arturo";
  inputs.src-arturo-v0_9_80.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-arturo-v0_9_80"];
    over = if builtins.pathExists ./override.nix 
           then { override = import ./override.nix; }
           else { };
  in lib.mkRefOutput (over // {
    inherit self nixpkgs ;
    src  = deps."src-arturo-v0_9_80";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  } );
}