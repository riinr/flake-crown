{
  description = ''A declarative user interface framework based on GTK'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-owlkettle-v1_5_0.flake = false;
  inputs.src-owlkettle-v1_5_0.ref   = "refs/tags/v1.5.0";
  inputs.src-owlkettle-v1_5_0.owner = "can-lehmann";
  inputs.src-owlkettle-v1_5_0.repo  = "owlkettle";
  inputs.src-owlkettle-v1_5_0.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-owlkettle-v1_5_0"];
    over = if builtins.pathExists ./override.nix 
           then { override = import ./override.nix; }
           else { };
  in lib.mkRefOutput (over // {
    inherit self nixpkgs ;
    src  = deps."src-owlkettle-v1_5_0";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  } );
}