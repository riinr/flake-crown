{
  description = ''libfuzzy/ssdeep wrapper'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-libfuzzy-v0_1_0-2.flake = false;
  inputs.src-libfuzzy-v0_1_0-2.ref   = "refs/tags/v0.1.0-2";
  inputs.src-libfuzzy-v0_1_0-2.owner = "srozb";
  inputs.src-libfuzzy-v0_1_0-2.repo  = "nim-libfuzzy";
  inputs.src-libfuzzy-v0_1_0-2.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-libfuzzy-v0_1_0-2"];
    over = if builtins.pathExists ./override.nix 
           then { override = import ./override.nix; }
           else { };
  in lib.mkRefOutput (over // {
    inherit self nixpkgs ;
    src  = deps."src-libfuzzy-v0_1_0-2";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  } );
}