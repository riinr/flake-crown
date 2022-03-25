{
  description = ''Jsmn - a world fastest JSON parser - in pure Nim'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-jsmn-0_1_5.flake = false;
  inputs.src-jsmn-0_1_5.ref   = "refs/tags/0.1.5";
  inputs.src-jsmn-0_1_5.owner = "OpenSystemsLab";
  inputs.src-jsmn-0_1_5.repo  = "jsmn.nim";
  inputs.src-jsmn-0_1_5.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-jsmn-0_1_5"];
    over = if builtins.pathExists ./override.nix 
           then { override = import ./override.nix; }
           else { };
  in lib.mkRefOutput (over // {
    inherit self nixpkgs ;
    src  = deps."src-jsmn-0_1_5";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  } );
}