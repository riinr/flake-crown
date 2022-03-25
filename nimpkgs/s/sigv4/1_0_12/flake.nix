{
  description = ''Amazon Web Services Signature Version 4'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-sigv4-1_0_12.flake = false;
  inputs.src-sigv4-1_0_12.ref   = "refs/tags/1.0.12";
  inputs.src-sigv4-1_0_12.owner = "disruptek";
  inputs.src-sigv4-1_0_12.repo  = "sigv4";
  inputs.src-sigv4-1_0_12.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-sigv4-1_0_12"];
    over = if builtins.pathExists ./override.nix 
           then { override = import ./override.nix; }
           else { };
  in lib.mkRefOutput (over // {
    inherit self nixpkgs ;
    src  = deps."src-sigv4-1_0_12";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  } );
}